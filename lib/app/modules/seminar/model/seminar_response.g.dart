// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seminar_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SeminarResponse? jsonToNullableSeminarResponse(Object? json) =>
    SeminarResponse.fromJson(json as Map<String, dynamic>);

SeminarResponse jsonToSeminarResponse(Object? json) =>
    SeminarResponse.fromJson(json as Map<String, dynamic>);

List<SeminarResponse?> jsonToListNullableSeminarResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SeminarResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<SeminarResponse> jsonToListSeminarResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SeminarResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeminarResponseImpl _$$SeminarResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SeminarResponseImpl(
      id: json['id'] as int?,
      namHanhChinh: json['namHanhChinh'] as int?,
      namHoc: json['namHoc'] as String?,
      tenHoiThao: json['tenHoiThao'] as String?,
      soQuyetDinh: json['soQuyetDinh'] as String?,
      ngayToChuc: json['ngayToChuc'] as String?,
      ngayKetThuc: json['ngayKetThuc'] as String?,
      diaDiemToChuc: json['diaDiemToChuc'] as String?,
      soLuongThamGia: json['soLuongThamGia'] as int?,
      mucDich: json['mucDich'] as String?,
      noiDung: json['noiDung'] as String?,
      ngonNgu: json['ngonNgu'] as String?,
      hinhThucTrinhBay: json['hinhThucTrinhBay'] as String?,
      tenLoaiHoiThao: json['tenLoaiHoiThao'] as String?,
    );

Map<String, dynamic> _$$SeminarResponseImplToJson(
        _$SeminarResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namHanhChinh': instance.namHanhChinh,
      'namHoc': instance.namHoc,
      'tenHoiThao': instance.tenHoiThao,
      'soQuyetDinh': instance.soQuyetDinh,
      'ngayToChuc': instance.ngayToChuc,
      'ngayKetThuc': instance.ngayKetThuc,
      'diaDiemToChuc': instance.diaDiemToChuc,
      'soLuongThamGia': instance.soLuongThamGia,
      'mucDich': instance.mucDich,
      'noiDung': instance.noiDung,
      'ngonNgu': instance.ngonNgu,
      'hinhThucTrinhBay': instance.hinhThucTrinhBay,
      'tenLoaiHoiThao': instance.tenLoaiHoiThao,
    };
