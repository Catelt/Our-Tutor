import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/tutor/tutor.dart';

part 'tutors_state.dart';

class TutorsCubit extends Cubit<TutorsState> {
  TutorsCubit() : super(TutorsState.ds()) {
    getList();
  }
  final domain = DomainManager.I;

  Future<void> getList() async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    final response = await domain.tutor.getList(state.page);
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MTutor> list = List.from(state.tutors);
        list.addAll(response.data ?? []);
        emit(state.copyWith(tutors: list, handle: MHandle.completed(true)));
        print(state.tutors);
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }
}
