// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_form_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

DocumentFormResponse? jsonToNullableDocumentFormResponse(Object? json) =>
    DocumentFormResponse.fromJson(json as Map<String, dynamic>);

DocumentFormResponse jsonToDocumentFormResponse(Object? json) =>
    DocumentFormResponse.fromJson(json as Map<String, dynamic>);

List<DocumentFormResponse?> jsonToListNullableDocumentFormResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DocumentFormResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<DocumentFormResponse> jsonToListDocumentFormResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DocumentFormResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentFormResponseImpl _$$DocumentFormResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentFormResponseImpl(
      id: json['id'] as String?,
      idForm: json['idForm'] as String?,
      formname: json['formname'] as String?,
      filename: json['filename'] as String?,
      updateTime: json['updateTime'] == null
          ? null
          : DateTime.parse(json['updateTime'] as String),
      status: json['status'] as int?,
      linkImageOnl: json['linkImageOnl'] as String?,
      linkDownload: json['linkDownload'] as String?,
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DocumentFormResponseImplToJson(
        _$DocumentFormResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idForm': instance.idForm,
      'formname': instance.formname,
      'filename': instance.filename,
      'updateTime': instance.updateTime?.toIso8601String(),
      'status': instance.status,
      'linkImageOnl': instance.linkImageOnl,
      'linkDownload': instance.linkDownload,
      'listForm': instance.listForm,
    };
