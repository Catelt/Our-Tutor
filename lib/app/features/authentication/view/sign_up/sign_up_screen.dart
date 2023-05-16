import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../routing/coordinator.dart';
import '../../../account/bloc/account_cubit.dart';
import '../../models/confirm_password.dart';
import '../../models/models.dart';
import '../../router/coordination.dart';
import '../../widgets/widget.dart';
import 'cubit/sign_up_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountCubit, AccountState>(
      listenWhen: (previous, current) => previous.isLogin != current.isLogin,
      listener: (context, state) {
        if (state.isLogin) {
          XCoordinator().showHomeScreen();
        }
      },
      child: BlocProvider(
        create: (_) => SignUpCubit(),
        child: BlocConsumer<SignUpCubit, SignUpState>(
          listenWhen: (previous, current) => previous.handle != current.handle,
          listener: (context, state) {
            if (state.handle.isCompleted && state.handle.data != null) {
              final user = state.handle.data;
              if (user != null && user.id.isNotEmpty) {
                GetIt.I<AccountCubit>().onLoginSuccess(user);
                XCoordinator().showHomeScreen();
              }
            } else if (state.handle.isError) {
              if (state.handle.message?.contains('Email has already taken') ==
                  true) {
                XToast.error(S.text.error_sign_up_email);
              } else {
                XToast.error(S.text.error_sign_up);
              }
            }
          },
          builder: (context, state) {
            return signUpView(context);
          },
        ),
      ),
    );
  }

  Widget signUpView(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
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
                    BlocBuilder<SignUpCubit, SignUpState>(
                      buildWhen: (previous, current) =>
                          previous.isPress != current.isPress ||
                          previous.email != current.email,
                      builder: (context, state) {
                        return TextFieldWidget(
                          hint: S.text.email_hint,
                          text: state.email.value,
                          onChange: context.read<SignUpCubit>().onChangEmail,
                          errorText: state.isPress
                              ? state.email.error?.messageEmail
                              : null,
                        );
                      },
                    ),
                    gapH12,
                    Text(S.text.password, style: TextStyle(fontSize: 15)),
                    BlocBuilder<SignUpCubit, SignUpState>(
                      buildWhen: (previous, current) =>
                          previous.isPress != current.isPress ||
                          previous.password != current.password,
                      builder: (context, state) {
                        return TextFieldWidget(
                          hint: S.text.password_hint,
                          text: state.password.value,
                          isPassword: true,
                          onChange: context.read<SignUpCubit>().onChangPassword,
                          errorText: state.isPress
                              ? state.password.error?.messagePassword
                              : null,
                        );
                      },
                    ),
                    gapH12,
                    Text(S.text.password_confirm,
                        style: TextStyle(fontSize: 15)),
                    BlocBuilder<SignUpCubit, SignUpState>(
                      buildWhen: (previous, current) =>
                          previous.isPress != current.isPress ||
                          previous.confirmPassword != current.confirmPassword ||
                          previous.password != current.password,
                      builder: (context, state) {
                        return TextFieldWidget(
                          hint: S.text.password_hint,
                          text: state.confirmPassword.value,
                          isPassword: true,
                          onChange: context
                              .read<SignUpCubit>()
                              .onChangeConfirmPassword,
                          errorText: state.isPress
                              ? state.confirmPassword.error?.message
                              : null,
                        );
                      },
                    ),
                    gapH12,
                    BlocBuilder<SignUpCubit, SignUpState>(
                      buildWhen: (previous, current) =>
                          previous.handle != current.handle,
                      builder: (context, state) {
                        return SizedBox(
                          width: double.infinity,
                          child: PrimaryButton(
                            text: S.text.sign_up_button,
                            isLoading: state.handle.isLoading,
                            onPressed: context.read<SignUpCubit>().register,
                          ),
                        );
                      },
                    ),
                    gapH16,
                    Center(
                      child: Text(S.text.sign_in_continue,
                          style: TextStyle(fontSize: 13)),
                    ),
                    gapH20,
                    // Center(
                    //   child: SizedBox(
                    //     width: MediaQuery.of(context).size.width / 2,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         // SocialButton(assetName: Assets.images.fb.path),
                    //         SocialButton(assetName: Assets.images.google.path),
                    //         // SocialButton(assetName: Assets.images.phone.path),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Center(
                      child: SocialButton(
                        assetName: Assets.images.google.path,
                        onTap: () {
                          context.read<AccountCubit>().loginGG();
                        },
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
        ),
      );
}
