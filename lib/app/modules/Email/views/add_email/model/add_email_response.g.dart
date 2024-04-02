// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddEmailResponseImpl _$$AddEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEmailResponseImpl(
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddEmailResponseImplToJson(
        _$AddEmailResponseImpl instance) =>
    <String, dynamic>{
      'listForm': instance.listForm,
    };
