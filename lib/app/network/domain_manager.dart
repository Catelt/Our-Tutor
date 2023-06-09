import 'data/auth/auth_repository.dart';
import 'data/course/course_repository.dart';
import 'data/gpt/gpt_repository.dart';
import 'data/gpt/gpt_repository_impl.dart';
import 'data/schedule/schedule_repository.dart';
import 'data/tutor/tutor_repository.dart';
import 'data/user/user_repository.dart';

class DomainManager {
  factory DomainManager() => I;
  DomainManager._internal() {
    auth = AuthRepositoryImpl();
    user = UserRepositoryImpl();
    tutor = TutorRepositoryImpl();
    course = CourseRepositoryImpl();
    schedule = ScheduleRepositoryImpl();
    gpt = GPTRepositoryImpl();
  }

  static final DomainManager I = DomainManager._internal();

  late AuthRepository auth;
  late UserRepository user;
  late TutorRepository tutor;
  late CourseRepository course;
  late ScheduleRepository schedule;
  late GPTRepository gpt;
}
