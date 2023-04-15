import 'data/auth/auth_repository.dart';

class DomainManager {
  factory DomainManager() => I;
  DomainManager._internal() {
    auth = AuthRepositoryImpl();
  }

  static final DomainManager I = DomainManager._internal();

  late AuthRepository auth;
}
