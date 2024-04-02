// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forward_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForwardDocumentResponseImpl _$$ForwardDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForwardDocumentResponseImpl(
      id: json['id'] as int?,
      TrichYeu: json['TrichYeu'] as String?,
      NgayBanHanh: json['NgayBanHanh'] as String?,
      SoDi: json['SoDi'] as String?,
      TrangThai: json['TrangThai'] as String?,
    );

Map<String, dynamic> _$$ForwardDocumentResponseImplToJson(
        _$ForwardDocumentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'TrichYeu': instance.TrichYeu,
      'NgayBanHanh': instance.NgayBanHanh,
      'SoDi': instance.SoDi,
      'TrangThai': instance.TrangThai,
    };
