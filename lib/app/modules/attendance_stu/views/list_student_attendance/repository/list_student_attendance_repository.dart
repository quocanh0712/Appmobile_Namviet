

import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_response.dart';

import '../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../../data/remote/wrappers/result.dart';

abstract class ListStudentAttendanceRepository{
  Future<Result<BaseResponseObject<List<ListStudentAttendanceResponse?>?>, NetworkError>> getStudentAttendanceList(
      ListStudentAttendanceRequest? model  );
}