import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit(this.id) : super(BookingState.ds());
  final String id;
  final domain = DomainManager();

  void onChangeContext(String value) {
    emit(state.copyWith(content: value));
  }

  void submit() async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.schedule.booking([id], state.content);
    emit(state.copyWith(handle: MHandle.result(response)));
  }
}
