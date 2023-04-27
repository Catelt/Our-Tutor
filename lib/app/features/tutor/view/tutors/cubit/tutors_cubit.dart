import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/common/result.dart';
import '../../../../../network/model/tutor/tutor.dart';

part 'tutors_state.dart';

class TutorsCubit extends Cubit<TutorsState> {
  TutorsCubit() : super(TutorsState.ds()) {
    getList();
  }
  final domain = DomainManager.I;

  Future<void> getList() async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    MResult<List<MTutor>> response;
    if (state.isSearch) {
      response = await domain.tutor.search(state.page,
          search: state.nameTutor, specialties: state.specialties);
    } else {
      response = await domain.tutor.getList(state.page);
    }
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MTutor> list = List.from(state.tutors);
        list.addAll(response.data ?? []);
        emit(state.copyWith(tutors: list, handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  void onChangeNameTutor(String value) {
    emit(state.copyWith(nameTutor: value));
  }

  void onSubmitSearch() {
    resetPage();
    getList();
  }

  void resetPage() {
    emit(state.copyWith(page: 0, tutors: []));
  }

  void resetFilter() {
    emit(state.copyWith(nameTutor: '', specialties: []));
  }
}
