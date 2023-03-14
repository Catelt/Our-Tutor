import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/routing/app_routing.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '404 - Page not found!',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                gapH32,
                PrimaryButton(
                  onPressed: () => context.goNamed(AppRoute.tutors.name),
                  text: 'Go Home',
                )
              ],
            ),
          ),
        ));
  }
}
