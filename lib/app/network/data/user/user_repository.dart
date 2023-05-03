import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../utils/extension/exception .dart';
import '../../model/common/result.dart';
import '../../model/user/user.dart';
import '../common/http.dart';

part 'user_repository_impl.dart';

abstract class UserRepository {
  Future<MResult<bool>> forgotPassword(String email);
  Future<MResult<MUser>> getInfo();
  Future<MResult<MUser>> updateProfile({
    String? name,
    String? country,
    String? phone,
    String? birthday,
    String? level,
    List<String>? learnTopics,
    String? studySchedule,
  });

  Future<MResult<MUser>> changeAvatar(String path, {String? name});
}
