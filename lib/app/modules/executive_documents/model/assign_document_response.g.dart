// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignDocumentResponseImpl _$$AssignDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignDocumentResponseImpl(
      id: json['id'] as int?,
      TrichYeu: json['TrichYeu'] as String?,
      NgayBanHanh: json['NgayBanHanh'] as String?,
      DonVi: json['DonVi'] as String?,
      TrangThai: json['TrangThai'] as String?,
    );

Map<String, dynamic> _$$AssignDocumentResponseImplToJson(
        _$AssignDocumentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'TrichYeu': instance.TrichYeu,
      'NgayBanHanh': instance.NgayBanHanh,
      'DonVi': instance.DonVi,
      'TrangThai': instance.TrangThai,
    };
