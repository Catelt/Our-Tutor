import 'dart:convert';

import '../../../utils/extension/exception .dart';
import '../../model/api/tutor_detail_response/tutor_detail_response.dart';
import '../../model/api/tutor_response/tutor_response.dart';
import '../../model/api/tutor_response/tutors.dart';
import '../../model/common/result.dart';
import '../../model/tutor/tutor.dart';
import '../common/http.dart';

part 'tutor_repository_impl.dart';

abstract class TutorRepository {
  Future<MResult<List<MTutor>>> getList(int page);
  Future<MResult<List<MTutor>>> search(int page,
      {List<String>? specialties, List<bool> nationality, String? search});
  Future<MResult<MTutor>> getDetailTutor(String id);
}
