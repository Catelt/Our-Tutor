import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../constants/base_style.dart';
import '../../../constants/countries.dart';
import '../../../constants/devices/app_Info.dart';
import '../../../localization/localization_utils.dart';
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
      child: SafeArea(
        child: Scaffold(
          body: _body(context),
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16)
            .add(const EdgeInsets.only(top: Sizes.p32)),
        child: Column(
          children: [
            info(),
            gapH32,
            settingSection(S.text.setting_edit_profile),
            settingSection(S.text.setting_language, onTap: () async {
              await showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return BlocBuilder<AccountCubit, AccountState>(
                      buildWhen: (previous, current) =>
                          previous.locale != current.locale,
                      builder: (context, state) {
                        return BottomSelectLanguage(
                          selected: XAppLanguage.getLanguage(state.locale),
                          onTap: context.read<AccountCubit>().onChangeLanguage,
                        );
                      },
                    );
                  });
            }),
            settingSection(S.text.setting_private_policy, onTap: () {
              XCoordinator().showVideoCall("abc");
            }),
            gapH32,
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                text: S.text.setting_button_log_out,
                onPressed: () {
                  context.read<AccountCubit>().onLogOut();
                },
              ),
            ),
            gapH4,
            Text(S.text.common_appVersion(AppInfo.package.version))
          ],
        ),
      ),
    );
  }

  Widget info() {
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        return Column(
          children: [
            AvatarWidget(
              url: state.user.avatar,
              size: 150,
            ),
            gapH16,
            Text(
              state.user.email,
              style: BaseTextStyle.heading2(),
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }

  Widget settingSection(String title, {void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Sizes.p12, horizontal: Sizes.p8),
        child: Row(
          children: [
            Text(
              title,
              style: BaseTextStyle.body3(),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
