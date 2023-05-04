part of 'tutors_cubit.dart';

class TutorsState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MTutor> tutors;
  final String nameTutor;
  final List<String> specialties;
  final List<String> national;
  final MBooking booking;
  final int total;

  TutorsState({
    required this.handle,
    required this.hasNextPage,
    required this.page,
    required this.tutors,
    this.nameTutor = '',
    this.specialties = const [],
    this.national = const [],
    required this.booking,
    this.total = 0,
  });

  factory TutorsState.ds() => TutorsState(
      handle: MHandle(),
      hasNextPage: true,
      page: 0,
      tutors: [],
      booking: MBooking(
        scheduleDetailInfo: MSchedule(),
      ));

  TutorsState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MTutor>? tutors,
    String? nameTutor,
    List<String>? specialties,
    List<String>? national,
    MBooking? booking,
    int? total,
  }) {
    return TutorsState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      tutors: tutors ?? this.tutors,
      nameTutor: nameTutor ?? this.nameTutor,
      specialties: specialties ?? this.specialties,
      national: national ?? this.national,
      booking: booking ?? this.booking,
      total: total ?? this.total,
    );
  }

  bool get isSearch =>
      nameTutor.isNotEmpty || specialties.isNotEmpty || national.isNotEmpty;

  List<String> get specialtiesId {
    List<String> result = [];
    for (var value in specialties) {
      result.add(Specialty.getId(value));
    }
    return result;
  }

  @override
  List<Object?> get props => [
        handle,
        hasNextPage,
        page,
        tutors,
        nameTutor,
        specialties,
        booking,
        total,
        national
      ];
}
