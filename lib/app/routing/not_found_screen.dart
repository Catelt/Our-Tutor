import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common_widgets/common_widgets.dart';
import '../constants/app_size.dart';
import 'app_routing.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

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
