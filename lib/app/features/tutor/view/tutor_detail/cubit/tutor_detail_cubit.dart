import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/schedule/schedule_info.dart';
import '../../../../../network/model/tutor/tutor.dart';

part 'tutor_detail_state.dart';

class TutorDetailCubit extends Cubit<TutorDetailState> {
  TutorDetailCubit(this.id) : super(TutorDetailState.ds()) {
    getTutor();
    getSchedule();
  }
  final String id;

  final domain = DomainManager();

  void getTutor() async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.tutor.getDetailTutor(id);
    if (isClosed) return;
    if (response.isSuccess) {
      final tutor = response.data ?? MTutor();
      emit(state.copyWith(handle: MHandle.completed(tutor), tutor: tutor));
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  void onChangeDateSelected(DateTime value) {
    emit(state.copyWith(onSelected: value));
    getSchedule();
  }

  void getSchedule() async {
    emit(state.copyWith(handleSchedule: MHandle.loading()));
    final response =
        await domain.schedule.getScheduleForDate(id, state.onSelected);
    if (isClosed) return;
    if (response.isSuccess && response.data != null) {
      emit(state.copyWith(
          handleSchedule: MHandle.completed(true), schedule: response.data));
    } else {
      emit(state.copyWith(handleSchedule: MHandle.error(response.error)));
    }
  }

  void onChangeFavorite() async {
    final response = await domain.tutor.favoriteTutor(id);
    if (response.isSuccess && response.data == true) {
      emit(state.copyWith(
          tutor: state.tutor.copyWith(isFavorite: !state.tutor.isFavorite)));
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }
}
