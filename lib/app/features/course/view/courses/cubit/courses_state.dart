part of 'courses_cubit.dart';

class CoursesState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MCourse> courses;

  CoursesState({
    required this.handle,
    required this.hasNextPage,
    required this.page,
    required this.courses,
  });

  factory CoursesState.ds() =>
      CoursesState(handle: MHandle(), hasNextPage: true, page: 0, courses: []);

  CoursesState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MCourse>? courses,
  }) {
    return CoursesState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      courses: courses ?? this.courses,
    );
  }

  @override
  List<Object?> get props => [handle, hasNextPage, page, courses];
}
