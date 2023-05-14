import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../network/domain_manager.dart';
import '../../../network/model/booking/booking.dart';
import '../../../network/model/booking/bookings.dart';
import '../../../network/model/common/handle.dart';

part 'schedule_state.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit() : super(ScheduleState.ds()) {
    getList();
  }

  final domain = DomainManager.I;

  Future<void> getList() async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    final response = await domain.schedule.getBookedClasses(
        state.page, DateTime.now().millisecondsSinceEpoch,
        isSchedule: true);
    if (isClosed) return;
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MBookings> list = List.from(state.list);
        list.addAll(handleSchedule(response.data ?? []));
        emit(state.copyWith(list: list, handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  List<MBookings> handleSchedule(List<MBooking> list) {
    List<MBookings> result = [];
    if (list.isEmpty) return result;
    if (list.length == 1)
      return [
        MBookings(list: [list.first])
      ];
    var i = 0;
    for (; i < list.length; i++) {
      List<MBooking> temp = [list[i]];
      for (var j = i + 1; j < list.length; j++) {
        if (sameBooking(list[i], list[j])) {
          final timeA = DateTime.fromMillisecondsSinceEpoch(
              list[i].scheduleDetailInfo.endPeriodTimestamp.round());
          final timeB = DateTime.fromMillisecondsSinceEpoch(
              list[j].scheduleDetailInfo.startPeriodTimestamp.round());

          if (timeB.isAfter(timeA) &&
              timeB.difference(timeA).inHours.abs() < 2) {
            temp.add(list[j]);
            i = j;
          } else {
            i = j;
            break;
          }
        } else {
          i = j;
          break;
        }
      }
      result.add(MBookings(list: temp));
    }
    return result;
  }

  bool sameBooking(MBooking a, MBooking b) {
    return a.scheduleDetailInfo.scheduleInfo?.tutorId ==
        b.scheduleDetailInfo.scheduleInfo?.tutorId;
  }
}
