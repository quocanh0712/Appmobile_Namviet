// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_stu_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceStuRequestImpl _$$AttendanceStuRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceStuRequestImpl(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      hocKy: json['hoc_ky'] as int?,
      namHoc: json['nam_hoc'] as String?,
      idUser: json['iD_cb'] as String?,
      userGroup: json['userGroup'] as int?,
    );

Map<String, dynamic> _$$AttendanceStuRequestImplToJson(
        _$AttendanceStuRequestImpl instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'hoc_ky': instance.hocKy,
      'nam_hoc': instance.namHoc,
      'iD_cb': instance.idUser,
      'userGroup': instance.userGroup,
    };
