// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_student_attendance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListStudentAttendanceRequestImpl _$$ListStudentAttendanceRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ListStudentAttendanceRequestImpl(
      idLopTc: json['iD_lop_tc'] as int?,
      idChiTiet: json['id_chi_tiet'] as int?,
      tuanThu: json['tuan_thu'] as int?,
    );

Map<String, dynamic> _$$ListStudentAttendanceRequestImplToJson(
        _$ListStudentAttendanceRequestImpl instance) =>
    <String, dynamic>{
      'iD_lop_tc': instance.idLopTc,
      'id_chi_tiet': instance.idChiTiet,
      'tuan_thu': instance.tuanThu,
    };
