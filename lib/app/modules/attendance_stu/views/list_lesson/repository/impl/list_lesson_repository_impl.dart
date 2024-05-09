



import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/repository/list_lesson_repository.dart';

import '../../../../../../../data/remote/clients/attendance_stu_client.dart';
import '../../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../../data/remote/layers/network_executor.dart';
import '../../../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../../../data/remote/wrappers/result.dart';

class ListLessonRepositoryImpl extends ListLessonRepository {
  @override
  Future<Result<BaseResponseObject<List<ListLessonResponse?>?>, NetworkError>> getLessonList(
      ListLessonRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<ListLessonResponse?>?>,
        BaseResponseObject<List<ListLessonResponse?>?>>(
        route: AttendanceStuClient.getLessonList(model),
        responseType: const BaseResponseObject<List<ListLessonResponse?>?>());
  }
}