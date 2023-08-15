// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_assign_document_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

EditAssignDocumentResponse? jsonToNullableEditAssignDocumentResponse(
        Object? json) =>
    EditAssignDocumentResponse.fromJson(json as Map<String, dynamic>);

EditAssignDocumentResponse jsonToEditAssignDocumentResponse(Object? json) =>
    EditAssignDocumentResponse.fromJson(json as Map<String, dynamic>);

List<EditAssignDocumentResponse?> jsonToListNullableEditAssignDocumentResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
            EditAssignDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<EditAssignDocumentResponse> jsonToListEditAssignDocumentResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
            EditAssignDocumentResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditAssignDocumentResponse _$$_EditAssignDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EditAssignDocumentResponse(
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EditAssignDocumentResponseToJson(
        _$_EditAssignDocumentResponse instance) =>
    <String, dynamic>{
      'listForm': instance.listForm,
    };
