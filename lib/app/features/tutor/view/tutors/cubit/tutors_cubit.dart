import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../constants/specialties.dart';
import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/booking/booking.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/schedule/schedule.dart';
import '../../../../../network/model/tutor/tutor.dart';

part 'tutors_state.dart';

class TutorsCubit extends Cubit<TutorsState> {
  TutorsCubit() : super(TutorsState.ds()) {
    getList();
    getUpComingBooking();
    getTotalTime();
  }
  final domain = DomainManager.I;

  Future<void> getList() async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    if (state.isSearch) {
      getSearch();
    } else {
      getDefault();
    }
  }

  void getDefault() async {
    final response = await domain.tutor.getList(state.page);

    if (isClosed) return;
    if (response.isSuccess) {
      if (response.data?.tutors.rows.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        final favorite = response.data?.favoriteTutor;
        favorite?.removeWhere(
          (e) => e.secondInfo == null,
        );
        final favoriteTutor =
            favorite?.map((e) => MTutor.fromSecondInfo(e.secondInfo!)).toList();
        emit(state.copyWith(favorite: favoriteTutor));
        List<MTutor> list = List.from(state.tutors);
        list.addAll(response.data?.tutors.rows ?? []);
        emit(state.copyWith(
            tutors: handleTutorData(list), handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  void getSearch() async {
    final response = await domain.tutor.search(state.page,
        search: state.nameTutor,
        specialties: state.specialtiesId,
        nationality: handleNationality());
    if (isClosed) return;
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MTutor> list = List.from(state.tutors);
        list.addAll(response.data ?? []);
        emit(state.copyWith(
            tutors: handleTutorData(list), handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  List<MTutor> handleTutorData(List<MTutor> list) {
    List<MTutor> result = List.from(list);
    for (var favorite in state.favorite) {
      if (!state.isSearch) {
        result.removeWhere((e) => e.id == favorite.id && e.isFavorite == false);
        if (state.page == 1) {
          result.insert(0, favorite.copyWith(isFavorite: true));
        }
      } else {
        final temp = list.where((e) => e.id == favorite.id).toList();
        if (temp.isNotEmpty) {
          result.removeWhere((e) => e.id == favorite.id);
          result.insert(0, temp.first.copyWith(isFavorite: true));
        }
      }
    }
    return sortTutorData(result);
  }

  Map<String, bool> handleNationality() {
    final vn = 'isVietNamese';
    final native = 'isNative';
    if (state.national.length == 1) {
      if (state.national.contains("Vietnamese Tutor")) {
        return {vn: true};
      }
      if (state.national.contains("Native English Tutor")) {
        return {native: true};
      } else {
        return {
          vn: false,
          native: false,
        };
      }
    }
    if (state.national.length == 2) {
      if (!state.national.contains("Vietnamese Tutor")) {
        return {vn: false};
      }
      if (!state.national.contains("Native English Tutor")) {
        return {native: false};
      } else {
        return {
          vn: true,
          native: true,
        };
      }
    }
    return {};
  }

  Future<void> getTotalTime() async {
    final response = await domain.schedule.getTotalTimeLearn();
    if (isClosed) return;
    if (response.isSuccess) {
      emit(state.copyWith(total: response.data));
    }
  }

  Future<void> getUpComingBooking() async {
    final response = await domain.schedule
        .getNextBooked(DateTime.now().millisecondsSinceEpoch);
    if (isClosed) return;
    if (response.isSuccess && response.data?.isNotEmpty == true) {
      emit(state.copyWith(booking: response.data?.first));
    }
  }

  void onChangeNameTutor(String value) {
    emit(state.copyWith(nameTutor: value));
  }

  void onChangeSpecialties(List<String> specialties) {
    emit(state.copyWith(specialties: specialties));
    onSubmitSearch();
  }

  void onChangeNational(List<String> national) {
    emit(state.copyWith(national: national));
    onSubmitSearch();
  }

  void onSubmitSearch() {
    resetPage();
    getList();
  }

  void resetPage() {
    emit(state.copyWith(page: 0, tutors: []));
  }

  void resetFilter() {
    emit(state.copyWith(nameTutor: '', specialties: [], national: []));
    onSubmitSearch();
  }

  List<MTutor> sortTutorData(List<MTutor> data) {
    List<MTutor> result = List.from(data);
    result.sort(((a, b) {
      if (a.isFavorite == b.isFavorite) {
        return b.rating.compareTo(a.rating);
      }
      if (b.isFavorite) {
        return 1;
      }
      return -1;
    }));
    return result;
  }

  void onChangeFavorite(MTutor tutor) async {
    final response = await domain.tutor.favoriteTutor(tutor.userId);
    List<MTutor> list = List.from(state.tutors);
    if (response.isSuccess && response.data == true) {
      if (tutor.isFavorite) {
        final index = list.indexOf(tutor);
        list[index] = list[index].copyWith(isFavorite: false);
      } else {
        list.removeWhere((e) => e.id == tutor.id);
        list.insert(0, tutor.copyWith(isFavorite: true));
      }
      emit(state.copyWith(tutors: sortTutorData(list)));
    }
  }
}
