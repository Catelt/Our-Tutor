import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/feedback/feedback.dart';

part 'feedback_state.dart';

class FeedbackCubit extends Cubit<FeedbackState> {
  FeedbackCubit() : super(FeedbackState.ds());

  final domain = DomainManager.I;

  Future<void> getList(String id) async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    final response = await domain.tutor.getFeedbackTutor(id, state.page);
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MFeedback> list = List.from(state.list);
        list.addAll(response.data ?? []);
        emit(state.copyWith(list: list, handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }
}
