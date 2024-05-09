

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_student_attendance_request.freezed.dart';
part 'list_student_attendance_request.g.dart';


ListStudentAttendanceRequest listStudentAttendanceRequestFromJson(String str) =>
    ListStudentAttendanceRequest.fromJson(json.decode(str));

String listStudentAttendanceRequestToJson(ListStudentAttendanceRequest data) => json.encode(data.toJson());
@freezed


class ListStudentAttendanceRequest with _$ListStudentAttendanceRequest {
  factory ListStudentAttendanceRequest({
    @JsonKey(name: 'iD_lop_tc') int? idLopTc,
    @JsonKey(name: 'id_chi_tiet') int? idChiTiet,
    @JsonKey(name: 'tuan_thu') int? tuanThu,
  }) = _ListStudentAttendanceRequest;

  factory ListStudentAttendanceRequest.fromJson(Map<String, dynamic> json) =>
      _$ListStudentAttendanceRequestFromJson(json);
}