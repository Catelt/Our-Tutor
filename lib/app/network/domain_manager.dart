import 'data/auth/auth_repository.dart';
import 'data/tutor/tutor_repository.dart';
import 'data/user/user_repository.dart';

class DomainManager {
  factory DomainManager() => I;
  DomainManager._internal() {
    auth = AuthRepositoryImpl();
    user = UserRepositoryImpl();
    tutor = TutorRepositoryImpl();
  }

  static final DomainManager I = DomainManager._internal();

  late AuthRepository auth;
  late UserRepository user;
  late TutorRepository tutor;
}
