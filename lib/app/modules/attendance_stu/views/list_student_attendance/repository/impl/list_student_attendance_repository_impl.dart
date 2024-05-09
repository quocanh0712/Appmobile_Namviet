

import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/repository/list_student_attendance_repository.dart';

import '../../../../../../../data/remote/clients/attendance_stu_client.dart';
import '../../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../../data/remote/layers/network_executor.dart';
import '../../../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../../../data/remote/wrappers/result.dart';

class ListStudentAttendanceRepositoryImpl extends ListStudentAttendanceRepository{
  @override
  Future<Result<BaseResponseObject<List<ListStudentAttendanceResponse?>?>, NetworkError>> getStudentAttendanceList(
      ListStudentAttendanceRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<ListStudentAttendanceResponse?>?>,
        BaseResponseObject<List<ListStudentAttendanceResponse?>?>>(
        route: AttendanceStuClient.getStudentAttendanceList(model),
        responseType: const BaseResponseObject<List<ListStudentAttendanceResponse?>?>());
  }
}