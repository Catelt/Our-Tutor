part of 'tutors_cubit.dart';

class TutorsState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MTutor> tutors;

  TutorsState({
    required this.handle,
    required this.hasNextPage,
    required this.page,
    required this.tutors,
  });

  factory TutorsState.ds() =>
      TutorsState(handle: MHandle(), hasNextPage: true, page: 0, tutors: []);

  TutorsState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MTutor>? tutors,
  }) {
    return TutorsState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      tutors: tutors ?? this.tutors,
    );
  }

  @override
  List<Object?> get props => [handle, hasNextPage, page, tutors];
}
