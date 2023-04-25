import 'app_routing.dart';
import 'base_coordinator.dart';

class XCoordinator extends BaseCoordinator {
  void showHomeScreen() {
    goNamed(AppRoute.tutors.name);
  }

  void showSignInScreen() {
    goNamed(AppRoute.signIn.name);
  }

  void showTutorDetail(String id) {
    pushNamed(AppRoute.tutor.name, params: {'id': id});
  }
}
