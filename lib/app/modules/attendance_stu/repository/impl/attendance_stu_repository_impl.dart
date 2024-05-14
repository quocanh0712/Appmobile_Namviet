


import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/year_time_response.dart';
import 'package:ftu_lms/app/modules/attendance_stu/repository/attendance_stu_repository.dart';

import '../../../../../data/remote/clients/attendance_stu_client.dart';
import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';
import '../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../data/remote/wrappers/result.dart';

class AttendanceStuRepositoryImpl extends AttendanceStuRepository {
  @override
  Future<Result<BaseResponseObject<List<AttendanceStuResponse?>?>, NetworkError>> getClassList(
      AttendanceStuRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<AttendanceStuResponse?>?>,
        BaseResponseObject<List<AttendanceStuResponse?>?>>(
        route: AttendanceStuClient.getClassList(model),
        responseType: const BaseResponseObject<List<AttendanceStuResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<List<YearTimeResponse?>?>, NetworkError>> getYearTime(
      AttendanceStuRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<YearTimeResponse?>?>,
        BaseResponseObject<List<YearTimeResponse?>?>>(
        route: AttendanceStuClient.getYearTime(model),
        responseType: const BaseResponseObject<List<YearTimeResponse?>?>());
  }
}