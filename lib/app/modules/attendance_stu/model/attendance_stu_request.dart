


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'attendance_stu_request.freezed.dart';
part 'attendance_stu_request.g.dart';


AttendanceStuRequest attendanceStuRequestFromJson(String str) =>
    AttendanceStuRequest.fromJson(json.decode(str));

String attendanceStuRequestToJson(AttendanceStuRequest data) => json.encode(data.toJson());
@freezed


class AttendanceStuRequest with _$AttendanceStuRequest {
  factory AttendanceStuRequest({
    int? startindex,
    int? length,
    @JsonKey(name: 'hoc_ky') int? hocKy,
    @JsonKey(name: 'nam_hoc') String? namHoc,
    @JsonKey(name: 'iD_cb') String? idUser,
    int? userGroup,
  }) = _AttendanceStuRequest;

  factory AttendanceStuRequest.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStuRequestFromJson(json);
}




