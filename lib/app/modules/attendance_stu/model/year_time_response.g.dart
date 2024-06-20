// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_time_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

YearTimeResponse? jsonToNullableYearTimeResponse(Object? json) =>
    YearTimeResponse.fromJson(json as Map<String, dynamic>);

YearTimeResponse jsonToYearTimeResponse(Object? json) =>
    YearTimeResponse.fromJson(json as Map<String, dynamic>);

List<YearTimeResponse?> jsonToListNullableYearTimeResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => YearTimeResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<YearTimeResponse> jsonToListYearTimeResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => YearTimeResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YearTimeResponseImpl _$$YearTimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$YearTimeResponseImpl(
      namHoc: json['namHoc'] as String?,
      tuNgay: json['tuNgay'] as String?,
      denNgay: json['denNgay'] as String?,
      hocKy: json['hocKy'] as String?,
      tuTuan: json['tuTuan'] as int?,
      denTuan: json['denTuan'] as int?,
      idKh: json['idKh'] as int?,
      hocKyHienTai: json['hocKyHienTai'] as int?,
      tuanHienTai: json['tuanHienTai'] as int?,
      namHienTai: json['namHienTai'] as String?,
    );

Map<String, dynamic> _$$YearTimeResponseImplToJson(
        _$YearTimeResponseImpl instance) =>
    <String, dynamic>{
      'namHoc': instance.namHoc,
      'tuNgay': instance.tuNgay,
      'denNgay': instance.denNgay,
      'hocKy': instance.hocKy,
      'tuTuan': instance.tuTuan,
      'denTuan': instance.denTuan,
      'idKh': instance.idKh,
      'hocKyHienTai': instance.hocKyHienTai,
      'tuanHienTai': instance.tuanHienTai,
      'namHienTai': instance.namHienTai,
    };
