



import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/year_time_response.dart';

import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';

abstract class AttendanceStuRepository {
  Future<Result<BaseResponseObject<List<AttendanceStuResponse?>?>, NetworkError>> getClassList(
      AttendanceStuRequest? model  );
  Future<Result<BaseResponseObject<List<YearTimeResponse?>?>, NetworkError>> getYearTime(
      AttendanceStuRequest? model  );
}