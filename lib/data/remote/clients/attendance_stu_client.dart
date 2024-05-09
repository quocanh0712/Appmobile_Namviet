


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/attendance_stu/model/attendance_stu_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_lesson/model/list_lesson_request.dart';
import 'package:ftu_lms/app/modules/attendance_stu/views/list_student_attendance/model/list_student_attendance_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import '../interfaces/base_client_generator.dart';

part 'attendance_stu_client.freezed.dart';



@freezed
class AttendanceStuClient extends BaseClientGenerator with _$AttendanceStuClient {
  AttendanceStuClient._() : super();

  factory AttendanceStuClient.getClassList(AttendanceStuRequest? model) = _AttendanceStuClient;
  factory AttendanceStuClient.getLessonList(ListLessonRequest? model) = _ListLesson;
  factory AttendanceStuClient.getStudentAttendanceList(ListStudentAttendanceRequest? model) = _ListStudentAttendance;

  @override
  String get baseURL => '${super.baseURL}/DiemDanh';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getClassList: (data) => data?.toJson() ?? {},
        getLessonList: (data) => data?.toJson() ?? {},
        getStudentAttendanceList: (data) => data?.toJson() ?? {},
        orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getClassList: (data) => '/GetAll',
      getLessonList: (data) => '/GetChiTiet',
      getStudentAttendanceList: (data) => '/GetDiemDanh',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}