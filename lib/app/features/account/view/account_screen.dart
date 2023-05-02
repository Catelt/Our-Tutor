import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../routing/coordinator.dart';
import '../bloc/account_cubit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountCubit, AccountState>(
      listener: (context, state) {
        if (!state.isLogin) {
          XCoordinator().showSignInScreen();
        }
      },
      child: Scaffold(
        body: Center(
          child: PrimaryButton(
            text: "Log out",
            onPressed: () {
              context.read<AccountCubit>().onLogOut();
            },
          ),
        ),
      ),
    );
  }
}
