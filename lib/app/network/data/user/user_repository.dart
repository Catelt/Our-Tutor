import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../utils/extension/exception .dart';
import '../../model/common/result.dart';
import '../../model/learn_topic/learn_topic.dart';
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
    List<MLearnTopic>? learnTopics,
    String? studySchedule,
  });

  Future<MResult<MUser>> becomeTutor({
    required String name,
    required String country,
    required String birthday,
    required String interests,
    required String education,
    required String experience,
    required String profession,
    List<String> languages,
    required String bio,
    required String targetStudent,
    List<String> specialties,
    String? avatar,
    String? video,
    int? price,
  });

  Future<MResult<MUser>> changeAvatar(String path, {String? name});
}
