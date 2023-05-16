import 'dart:convert';

import '../../../utils/extension/exception .dart';
import '../../model/api/auth_response/auth_response.dart';
import '../../model/common/result.dart';
import '../../model/user/user.dart';
import '../common/http.dart';

part 'auth_repository_impl.dart';

abstract class AuthRepository {
  Future<MResult<MUser>> login(String email, String password);
  Future<MResult<MUser>> register(String email, String password);
  Future<MResult<MUser>> refreshToken(String token, {int timezone = 7});
  Future<MResult<MUser>> loginGG(String token);
}
