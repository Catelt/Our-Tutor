import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../network/model/user/user.dart';
import '../../../services/user_prefs.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountState.ds());
}
