class DomainManager {
  factory DomainManager() => I;
  DomainManager._internal() {}

  static final DomainManager I = DomainManager._internal();
}
