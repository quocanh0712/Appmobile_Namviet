// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_document_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AssignDocumentResponse? jsonToNullableAssignDocumentResponse(Object? json) =>
    AssignDocumentResponse.fromJson(json as Map<String, dynamic>);

AssignDocumentResponse jsonToAssignDocumentResponse(Object? json) =>
    AssignDocumentResponse.fromJson(json as Map<String, dynamic>);

List<AssignDocumentResponse?> jsonToListNullableAssignDocumentResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AssignDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AssignDocumentResponse> jsonToListAssignDocumentResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AssignDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignDocumentResponse _$$_AssignDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AssignDocumentResponse(
      id: json['id'] as int?,
      TrichYeu: json['TrichYeu'] as String?,
      NgayBanHanh: json['NgayBanHanh'] as String?,
      DonVi: json['DonVi'] as String?,
      TrangThai: json['TrangThai'] as String?,
    );

Map<String, dynamic> _$$_AssignDocumentResponseToJson(
        _$_AssignDocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'TrichYeu': instance.TrichYeu,
      'NgayBanHanh': instance.NgayBanHanh,
      'DonVi': instance.DonVi,
      'TrangThai': instance.TrangThai,
    };
