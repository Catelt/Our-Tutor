import 'package:go_router/go_router.dart';

import '../../../routing/app_routing.dart';
import '../../../routing/base_coordinator.dart';
import '../../../routing/custom_transition.dart';
import '../view/view.dart';

enum AuthRoute {
  signIn,
  signUp,
}

class AuthCoordinator extends BaseCoordinator {
  static final router = [
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: AuthRoute.signIn.name,
      path: '/signIn',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const SignInScreen()),
    ),
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: AuthRoute.signUp.name,
      path: '/signUp',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const SignUpScreen()),
    ),
  ];

  void showSignIn() {
    goNamed(AuthRoute.signIn.name);
  }

  void showSignUp() {
    goNamed(AuthRoute.signUp.name);
  }
}
