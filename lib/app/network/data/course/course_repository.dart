import 'dart:convert';

import '../../../utils/extension/exception .dart';
import '../../model/api/courses_response/courses_response.dart';
import '../../model/common/result.dart';
import '../../model/course/course.dart';
import '../common/http.dart';

part 'course_repository_impl.dart';

abstract class CourseRepository {
  Future<MResult<List<MCourse>>> getList(int page,
      {String? name, List<String> level, List<String> categoryId, bool? sort});
  Future<MResult<MCourse>> getDetailCourse(String id);
}
