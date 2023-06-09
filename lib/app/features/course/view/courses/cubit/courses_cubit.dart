import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../constants/course_level.dart';
import '../../../../../constants/specialties.dart';
import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/course/course.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesState.ds()) {
    getList();
  }

  final domain = DomainManager.I;

  Future<void> getList() async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    final response = await domain.course.getList(
      state.page,
      name: state.nameCourse,
      level: state.levels.map((e) => e.id).toList(),
      categoryId: state.categories.map((e) => e.categoriesId).toList(),
      sort: state.sort,
    );
    if (isClosed) return;
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MCourse> list = List.from(state.courses);
        list.addAll(response.data ?? []);
        emit(state.copyWith(courses: list, handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  void onChangeNameCourse(String value) {
    emit(state.copyWith(nameCourse: value));
  }

  void onChangeLevels(List<CoursesLevel> levels) {
    emit(state.copyWith(levels: levels));
    onSubmitSearch();
  }

  void onChangeCategories(List<Specialty> categories) {
    emit(state.copyWith(categories: categories));
    onSubmitSearch();
  }

  void onChangeSort(bool? value) {
    emit(state.copyWith(sort: value, resetSort: value == null));
    onSubmitSearch();
  }

  void onSubmitSearch() {
    resetPage();
    getList();
  }

  void resetPage() {
    emit(state.copyWith(
      page: 0,
      courses: [],
    ));
  }

  void resetFilter() {
    emit(state
        .copyWith(levels: [], categories: [], nameCourse: '', resetSort: true));
    onSubmitSearch();
  }
}
