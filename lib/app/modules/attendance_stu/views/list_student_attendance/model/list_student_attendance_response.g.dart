// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_student_attendance_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ListStudentAttendanceResponse? jsonToNullableListStudentAttendanceResponse(Object? json) =>
    ListStudentAttendanceResponse.fromJson(json as Map<String, dynamic>);

ListStudentAttendanceResponse jsonToListStudentAttendanceResponse(Object? json) =>
    ListStudentAttendanceResponse.fromJson(json as Map<String, dynamic>);

List<ListStudentAttendanceResponse?> jsonToListNullableListStudentAttendanceResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ListStudentAttendanceResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ListStudentAttendanceResponse> jsonToListListStudentAttendanceResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ListStudentAttendanceResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListStudentAttendanceResponseImpl
    _$$ListStudentAttendanceResponseImplFromJson(Map<String, dynamic> json) =>
        _$ListStudentAttendanceResponseImpl(
          maSv: json['ma_sv'] as String?,
          hoTen: json['ho_ten'] as String?,
          tenLop: json['ten_lop'] as String?,
          idSv: json['iD_sv'] as String?,
          idLopTc: json['iD_lop_tc'] as int?,
          tiet: json['tiet'] as int?,
          soTiet: json['so_tiet'] as int?,
          ngaySinh: json['ngay_sinh'] as String?,
          tongSoTietNghi: json['tongSoTietNghi'] as int?,
        );

Map<String, dynamic> _$$ListStudentAttendanceResponseImplToJson(
        _$ListStudentAttendanceResponseImpl instance) =>
    <String, dynamic>{
      'ma_sv': instance.maSv,
      'ho_ten': instance.hoTen,
      'ten_lop': instance.tenLop,
      'iD_sv': instance.idSv,
      'iD_lop_tc': instance.idLopTc,
      'tiet': instance.tiet,
      'so_tiet': instance.soTiet,
      'ngay_sinh': instance.ngaySinh,
      'tongSoTietNghi': instance.tongSoTietNghi,
    };
