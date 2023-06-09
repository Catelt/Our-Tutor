import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/course/course.dart';

part 'course_detail_state.dart';

class CourseDetailCubit extends Cubit<CourseDetailState> {
  CourseDetailCubit() : super(CourseDetailState.ds());

  final domain = DomainManager();

  void getCourse(String id) async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.course.getDetailCourse(id);
    emit(state.copyWith(handle: MHandle.result(response)));
  }
}
