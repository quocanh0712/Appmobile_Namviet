// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_email_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AddEmailResponse? jsonToNullableAddEmailResponse(Object? json) =>
    AddEmailResponse.fromJson(json as Map<String, dynamic>);

AddEmailResponse jsonToAddEmailResponse(Object? json) =>
    AddEmailResponse.fromJson(json as Map<String, dynamic>);

List<AddEmailResponse?> jsonToListNullableAddEmailResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AddEmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AddEmailResponse> jsonToListAddEmailResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AddEmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddEmailResponse _$$_AddEmailResponseFromJson(Map<String, dynamic> json) =>
    _$_AddEmailResponse(
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddEmailResponseToJson(_$_AddEmailResponse instance) =>
    <String, dynamic>{
      'listForm': instance.listForm,
    };
