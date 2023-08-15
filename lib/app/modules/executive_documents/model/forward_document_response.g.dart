// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forward_document_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ForwardDocumentResponse? jsonToNullableForwardDocumentResponse(Object? json) =>
    ForwardDocumentResponse.fromJson(json as Map<String, dynamic>);

ForwardDocumentResponse jsonToForwardDocumentResponse(Object? json) =>
    ForwardDocumentResponse.fromJson(json as Map<String, dynamic>);

List<ForwardDocumentResponse?> jsonToListNullableForwardDocumentResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ForwardDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ForwardDocumentResponse> jsonToListForwardDocumentResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ForwardDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForwardDocumentResponse _$$_ForwardDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForwardDocumentResponse(
      id: json['id'] as int?,
      TrichYeu: json['TrichYeu'] as String?,
      NgayBanHanh: json['NgayBanHanh'] as String?,
      SoDi: json['SoDi'] as String?,
      TrangThai: json['TrangThai'] as String?,
    );

Map<String, dynamic> _$$_ForwardDocumentResponseToJson(
        _$_ForwardDocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'TrichYeu': instance.TrichYeu,
      'NgayBanHanh': instance.NgayBanHanh,
      'SoDi': instance.SoDi,
      'TrangThai': instance.TrangThai,
    };
