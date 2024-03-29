import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routing.dart';

abstract class BaseCoordinator {
  BuildContext get context => XAppRouter.navigatorKey.currentState!.context;

  String get location => GoRouterState.of(context).uri.toString();

  bool canPop() {
    return XAppRouter.navigatorKey.currentState!.canPop();
  }

  void onBack([Object? result]) {
    if (canPop()) {
      XAppRouter.navigatorKey.currentState!.pop(result);
    }
  }

  void push(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      context.push(
        name,
        extra: extra,
      );

  void pushNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      context.pushNamed(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );

  void goNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      context.goNamed(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );

  void pushReplacementNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      context.pushReplacementNamed(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );
}
