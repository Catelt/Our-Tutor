import 'dart:convert';

import '../../../utils/extension/exception .dart';
import '../../model/common/result.dart';
import '../../model/user/user.dart';
import '../common/http.dart';

part 'user_repository_impl.dart';

abstract class UserRepository {
  Future<MResult<bool>> forgotPassword(String email);
  Future<MResult<MUser>> getInfo();
}
