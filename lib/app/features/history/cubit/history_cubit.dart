import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../network/domain_manager.dart';
import '../../../network/model/booking/booking.dart';
import '../../../network/model/common/handle.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(HistoryState.ds()) {
    getList();
  }

  final domain = DomainManager.I;

  Future<void> getList() async {
    emit(state.copyWith(page: state.page + 1, handle: MHandle.loading()));
    final response = await domain.schedule
        .getBookedClasses(state.page, DateTime.now().microsecondsSinceEpoch);
    if (response.isSuccess) {
      if (response.data?.isEmpty == true) {
        emit(state.copyWith(
            hasNextPage: false, handle: MHandle.completed(true)));
      } else {
        List<MBooking> list = List.from(state.list);
        list.addAll(response.data ?? []);
        emit(state.copyWith(list: list, handle: MHandle.completed(true)));
      }
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }
}
