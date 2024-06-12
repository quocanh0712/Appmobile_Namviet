// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_stu_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AttendanceStuResponse? jsonToNullableAttendanceStuResponse(Object? json) =>
    AttendanceStuResponse.fromJson(json as Map<String, dynamic>);

AttendanceStuResponse jsonToAttendanceStuResponse(Object? json) =>
    AttendanceStuResponse.fromJson(json as Map<String, dynamic>);

List<AttendanceStuResponse?> jsonToListNullableAttendanceStuResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AttendanceStuResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AttendanceStuResponse> jsonToListAttendanceStuResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AttendanceStuResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceStuResponseImpl _$$AttendanceStuResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceStuResponseImpl(
      idMonTc: json['iD_mon_tc'] as int?,
      idMon: json['iD_mon'] as int?,
      idLopTc: json['iD_lop_tc'] as int?,
      tenLopHp: json['ten_lop_hp'] as String?,
      tenMon: json['ten_mon'] as String?,
      kyDangKy: json['ky_dang_ky'] as int?,
      idLopLt: json['iD_lop_lt'] as int?,
      idHinhThucThi: json['iD_hinh_thuc_thi'] as int?,
      kyHieu: json['ky_hieu'] as int?,
      soTinChi: json['so_tin_chi'] as int?,
      stt: json['stt'] as int?,
      hoTen: json['ho_ten'] as String?,
      siSoLopTc: json['siso_lop_tc'] as int?,
      tenLop: json['ten_lop'] as String?,
    );

Map<String, dynamic> _$$AttendanceStuResponseImplToJson(
        _$AttendanceStuResponseImpl instance) =>
    <String, dynamic>{
      'iD_mon_tc': instance.idMonTc,
      'iD_mon': instance.idMon,
      'iD_lop_tc': instance.idLopTc,
      'ten_lop_hp': instance.tenLopHp,
      'ten_mon': instance.tenMon,
      'ky_dang_ky': instance.kyDangKy,
      'iD_lop_lt': instance.idLopLt,
      'iD_hinh_thuc_thi': instance.idHinhThucThi,
      'ky_hieu': instance.kyHieu,
      'so_tin_chi': instance.soTinChi,
      'stt': instance.stt,
      'ho_ten': instance.hoTen,
      'siso_lop_tc': instance.siSoLopTc,
      'ten_lop': instance.tenLop,
    };
