import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../../network/domain_manager.dart';
import '../../../../network/model/common/handle.dart';
import '../../../../network/model/tutor/tutor.dart';

part 'tutor_detail_state.dart';

class TutorDetailCubit extends Cubit<TutorDetailState> {
  TutorDetailCubit() : super(TutorDetailState.ds());

  final domain = DomainManager();

  void getTutor(String id) async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.tutor.getDetailTutor(id);
    emit(state.copyWith(handle: MHandle.result(response)));
  }
}
