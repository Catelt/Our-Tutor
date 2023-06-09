part of 'courses_cubit.dart';

class CoursesState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MCourse> courses;
  final String nameCourse;
  final List<CoursesLevel> levels;
  final List<Specialty> categories;
  final bool? sort;

  CoursesState({
    required this.handle,
    required this.hasNextPage,
    required this.page,
    required this.courses,
    this.nameCourse = '',
    this.levels = const [],
    this.categories = const [],
    this.sort,
  });

  factory CoursesState.ds() =>
      CoursesState(handle: MHandle(), hasNextPage: true, page: 0, courses: []);

  CoursesState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MCourse>? courses,
    String? nameCourse,
    List<CoursesLevel>? levels,
    List<Specialty>? categories,
    bool? sort,
    bool? resetSort,
  }) {
    return CoursesState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      courses: courses ?? this.courses,
      nameCourse: nameCourse ?? this.nameCourse,
      levels: levels ?? this.levels,
      categories: categories ?? this.categories,
      sort: resetSort == true ? null : sort ?? this.sort,
    );
  }

  @override
  List<Object?> get props => [
        handle,
        hasNextPage,
        page,
        courses,
        nameCourse,
        levels,
        categories,
        sort
      ];
}
