// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_assign_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditAssignDocumentResponseImpl _$$EditAssignDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditAssignDocumentResponseImpl(
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditAssignDocumentResponseImplToJson(
        _$EditAssignDocumentResponseImpl instance) =>
    <String, dynamic>{
      'listForm': instance.listForm,
    };
