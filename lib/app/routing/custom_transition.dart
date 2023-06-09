import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultTransition extends CustomTransitionPage<void> {
  DefaultTransition({super.key, required super.child})
      : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
}
