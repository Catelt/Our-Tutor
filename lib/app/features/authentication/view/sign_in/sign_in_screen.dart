import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../routing/coordinator.dart';
import '../../../account/logic/account_cubit.dart';
import '../../models/models.dart';
import '../../router/coordination.dart';
import '../../widgets/widget.dart';
import 'cubit/sign_in_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInCubit(),
      child: BlocListener<SignInCubit, SignInState>(
        listenWhen: (previous, current) => previous.handle != current.handle,
        listener: (context, state) {
          if (state.handle.isCompleted && state.handle.data != null) {
            final user = state.handle.data;
            if (user != null && user.id.isNotEmpty) {
              GetIt.I<AccountCubit>().onLoginSuccess(user);
              XCoordinator().showHomeScreen();
            }
          } else if (state.handle.isError) {
            XToast.error(S.text.error_sign_in);
          }
        },
        child: signInView(context),
      ),
    );
  }

  Widget signInView(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.text.sign_in_title,
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
                    BlocBuilder<SignInCubit, SignInState>(
                      buildWhen: (previous, current) =>
                          previous.isPress != current.isPress ||
                          previous.email != current.email,
                      builder: (context, state) {
                        return TextFieldWidget(
                          hint: S.text.email_hint,
                          text: state.email.value,
                          onChange: context.read<SignInCubit>().onChangEmail,
                          errorText: state.isPress
                              ? state.email.error?.messageEmail
                              : null,
                        );
                      },
                    ),
                    gapH12,
                    Text(S.text.password, style: TextStyle(fontSize: 15)),
                    BlocBuilder<SignInCubit, SignInState>(
                      buildWhen: (previous, current) =>
                          previous.isPress != current.isPress ||
                          previous.password != current.password,
                      builder: (context, state) {
                        return TextFieldWidget(
                          hint: S.text.password_hint,
                          text: state.password.value,
                          isPassword: true,
                          onChange: context.read<SignInCubit>().onChangPassword,
                          errorText: state.isPress
                              ? state.password.error?.messagePassword
                              : null,
                        );
                      },
                    ),
                    gapH12,
                    BlocBuilder<SignInCubit, SignInState>(
                      buildWhen: (previous, current) =>
                          previous.handle != current.handle,
                      builder: (context, state) {
                        return SizedBox(
                          width: double.infinity,
                          child: PrimaryButton(
                            text: S.text.sign_in_button,
                            isLoading: state.handle.isLoading,
                            onPressed: context.read<SignInCubit>().login,
                          ),
                        );
                      },
                    ),
                    gapH8,
                    Center(
                      child: GestureDetector(
                        onTap: AuthCoordinator().showForgotPassword,
                        child: Text(S.text.sign_in_forget_password,
                            style: TextStyle(
                                fontSize: 13, color: Colors.blue[900])),
                      ),
                    ),
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
                          Text(S.text.sign_in_footer,
                              style: TextStyle(fontSize: 13)),
                          GestureDetector(
                            onTap: () => AuthCoordinator().showSignUp(),
                            child: Text(S.text.sign_up,
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
        ),
      );
}
