import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/course/course.dart';

part 'topic_detail_state.dart';

class TopicDetailCubit extends Cubit<TopicDetailState> {
  TopicDetailCubit() : super(TopicDetailState.ds());

  final domain = DomainManager();

  void checkCourse({required String id, MCourse? course, int? select}) {
    if (course == null) {
      getCourse(id);
    } else {
      emit(state.copyWith(handle: MHandle.completed(course), selected: select));
    }
  }

  void getCourse(String id) async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.course.getDetailCourse(id);
    emit(state.copyWith(handle: MHandle.result(response)));
  }

  void onChangeSelected(int value) {
    emit(state.copyWith(selected: value));
  }
}
