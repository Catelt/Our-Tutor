import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../routing/coordinator.dart';
import '../../../account/logic/account_cubit.dart';
import '../../cubit/auth_cubit.dart';
import '../../router/coordination.dart';
import '../../widgets/widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.handle.isCompleted) {
            final user = state.handle.data;
            if (user != null) {
              GetIt.I<AccountCubit>().onLoginSuccess(user);
              XCoordinator().showHomeScreen();
            }
          }
        },
        builder: (context, state) {
          return signInView(context);
        },
      ),
    );
  }

  Widget signInView(BuildContext context) => Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.text.sign_up_title,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          height: 0)),
                  gapH8,
                  Text(S.text.sign_in_subtitle,
                      style: TextStyle(fontSize: 20, height: 0)),
                  gapH20,
                  Text(S.text.email, style: TextStyle(fontSize: 15)),
                  TextFieldWidget(hint: S.text.email_hint),
                  gapH12,
                  Text(S.text.password, style: TextStyle(fontSize: 15)),
                  TextFieldWidget(hint: S.text.password_hint),
                  gapH12,
                  SizedBox(
                      width: double.infinity,
                      child: PrimaryButton(
                          text: S.text.sign_up_button,
                          onPressed: () =>
                              {context.read<AuthCubit>().login()})),
                  gapH16,
                  Center(
                    child: Text(S.text.sign_in_continue,
                        style: TextStyle(fontSize: 13)),
                  ),
                  gapH20,
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SocialButton(assetName: Assets.images.fb.path),
                          SocialButton(assetName: Assets.images.google.path),
                          SocialButton(assetName: Assets.images.phone.path),
                        ],
                      ),
                    ),
                  ),
                  gapH20,
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(S.text.sign_up_footer,
                            style: TextStyle(fontSize: 13)),
                        GestureDetector(
                          onTap: () => AuthCoordinator().showSignIn(),
                          child: Text(S.text.sign_in,
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blue[900])),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
