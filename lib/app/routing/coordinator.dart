import '../network/model/booking/booking.dart';
import '../network/model/course/course.dart';
import 'app_routing.dart';
import 'base_coordinator.dart';

class XCoordinator extends BaseCoordinator {
  void showHomeScreen() {
    goNamed(AppRoute.tutors.name);
  }

  void showSignInScreen() {
    goNamed(AppRoute.signIn.name);
  }

  void showTutorDetail(String id, {bool isReplace = false}) {
    if (isReplace) {
      goNamed(AppRoute.tutor.name, params: {'id': id});
    } else {
      pushNamed(AppRoute.tutor.name, params: {'id': id});
    }
  }

  void showFeedback(String id) {
    pushNamed(AppRoute.feedback.name, params: {'id': id});
  }

  // Course
  void showCourseDetail(String id, {bool isReplace = false}) {
    if (isReplace) {
      goNamed(AppRoute.course.name, params: {'id': id});
    } else {
      pushNamed(AppRoute.course.name, params: {'id': id});
    }
  }

  void showTopicDetail(String id, {MCourse? course, int? select}) {
    pushNamed(AppRoute.topic.name,
        params: {'id': id},
        extra: course,
        queryParams: select != null ? {'index': select.toString()} : {});
  }

  void showVideoCall(String id, MBooking booking) {
    pushNamed(AppRoute.videoCall.name, params: {'id': id}, extra: booking);
  }

  void showEditProfile() {
    pushNamed(AppRoute.editProfile.name);
  }

  void showBecomeTutor() {
    pushNamed(AppRoute.becomeTutor.name);
  }

  void showChat() {
    pushNamed(AppRoute.chat.name);
  }
}
