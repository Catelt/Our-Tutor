import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/tutor/tutor.dart';

part 'tutor_detail_state.dart';

class TutorDetailCubit extends Cubit<TutorDetailState> {
  TutorDetailCubit() : super(TutorDetailState.ds());

  final domain = DomainManager();

  void getTutor(String id) async {
    emit(state.copyWith(handle: MHandle.loading()));
    final response = await domain.tutor.getDetailTutor(id);
    if (response.isSuccess) {
      final tutor = response.data ?? MTutor();
      emit(state.copyWith(handle: MHandle.completed(tutor), tutor: tutor));
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }

  void onChangeFavorite(String id) async {
    final response = await domain.tutor.favoriteTutor(id);
    if (response.isSuccess && response.data == true) {
      emit(state.copyWith(
          tutor: state.tutor.copyWith(isFavorite: !state.tutor.isFavorite)));
    } else {
      emit(state.copyWith(handle: MHandle.error(response.error)));
    }
  }
}
