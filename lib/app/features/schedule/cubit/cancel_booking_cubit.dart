import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../network/domain_manager.dart';
import '../../../network/model/common/handle.dart';

part 'cancel_booking_state.dart';

class CancelBookingCubit extends Cubit<CancelBookingState> {
  CancelBookingCubit({required this.id}) : super(CancelBookingState.ds());
  final String id;
  final domain = DomainManager();

  void onChangeContext(String value) {
    emit(state.copyWith(content: value));
  }

  void submit() async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.schedule.cancelBooking([id], state.content);
    emit(state.copyWith(handle: MHandle.result(response)));
  }
}
