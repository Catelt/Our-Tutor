import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/default_form.dart';
import '../../../../../network/model/common/handle.dart';

part 'report_state.dart';

class ReportCubit extends Cubit<ReportState> {
  ReportCubit({required this.id}) : super(ReportState.ds());
  final String id;
  final domain = DomainManager();

  void onChangeContext(String value) {
    emit(state.copyWith(content: DefaultForm.dirty(value)));
  }

  void submit() async {
    emit(state.copyWith(isPress: true));
    if (state.content.isValid) {
      emit(state.copyWith(handle: MHandle.loading()));
      final response = await domain.tutor.reportTutor(id, state.content.value);
      emit(state.copyWith(handle: MHandle.result(response)));
    }
  }
}
