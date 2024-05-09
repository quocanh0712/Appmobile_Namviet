

import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_response.dart';

import '../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../../data/remote/wrappers/result.dart';

abstract class ListLessonRepository{
  Future<Result<BaseResponseObject<List<ListLessonResponse?>?>, NetworkError>> getLessonList(
      ListLessonRequest? model  );
}