import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/authentication/presentation/widgets/widget.dart';

import '../../../../network/domain_manager.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Say hello to your English tutors',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        height: 0)),
                gapH8,
                const Text(
                    'Become fluent faster through one on one video chat lessons tailored to your goals.',
                    style: TextStyle(fontSize: 20, height: 0)),
                gapH20,
                const Text('EMAIL', style: TextStyle(fontSize: 15)),
                const TextFieldWidget(hint: 'Enter your email'),
                gapH12,
                const Text('PASSWORD', style: TextStyle(fontSize: 15)),
                const TextFieldWidget(hint: 'Enter your password'),
                gapH12,
                SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                        text: 'LOG IN',
                        onPressed: () => {
                              DomainManager.I.auth
                                  .login("phhai@ymail.com", "123456")
                            })),
                gapH8,
                Center(
                  child: Text('Forgot Password?',
                      style: TextStyle(fontSize: 13, color: Colors.blue[900])),
                ),
                gapH16,
                const Center(
                  child:
                      Text('Or continue with', style: TextStyle(fontSize: 13)),
                ),
                gapH20,
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SocialButton(assetName: AppIcon.icFb),
                        SocialButton(assetName: AppIcon.icGoogle),
                        SocialButton(assetName: AppIcon.icPhone),
                      ],
                    ),
                  ),
                ),
                gapH20,
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Not a member yet? ',
                          style: TextStyle(fontSize: 13)),
                      Text('Sign up',
                          style:
                              TextStyle(fontSize: 13, color: Colors.blue[900])),
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
}
