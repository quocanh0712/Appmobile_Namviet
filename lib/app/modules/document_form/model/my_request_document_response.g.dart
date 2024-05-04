// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_request_document_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

MyRequestDocumentResponse? jsonToNullableMyRequestDocumentResponse(
    Object? json) =>
    MyRequestDocumentResponse.fromJson(json as Map<String, dynamic>);

MyRequestDocumentResponse jsonToMyRequestDocumentResponse(Object? json) =>
    MyRequestDocumentResponse.fromJson(json as Map<String, dynamic>);

List<MyRequestDocumentResponse?> jsonToListNullableMyRequestDocumentResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        MyRequestDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<MyRequestDocumentResponse> jsonToListMyRequestDocumentResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        MyRequestDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyRequestDocumentResponseImpl _$$MyRequestDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyRequestDocumentResponseImpl(
      id: json['id'] as String?,
      idForm: json['idForm'] as String?,
      formname: json['formname'] as String?,
      updateTime: json['updateTime'] == null
          ? null
          : DateTime.parse(json['updateTime'] as String),
      status: json['status'] as int?,
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => ValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyRequestDocumentResponseImplToJson(
        _$MyRequestDocumentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idForm': instance.idForm,
      'formname': instance.formname,
      'updateTime': instance.updateTime?.toIso8601String(),
      'status': instance.status,
      'listForm': instance.listForm,
    };
