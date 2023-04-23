import '../../../utils/extension/exception .dart';
import '../../model/common/result.dart';
import '../common/http.dart';

part 'user_repository_impl.dart';

abstract class UserRepository {
  Future<MResult<bool>> forgotPassword(String email);
}
