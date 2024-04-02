// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyItemResponseImpl _$$SurveyItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SurveyItemResponseImpl(
      criteria: json['criteria'] as String?,
      result: json['result'] as String?,
      count: json['count'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$SurveyItemResponseImplToJson(
        _$SurveyItemResponseImpl instance) =>
    <String, dynamic>{
      'criteria': instance.criteria,
      'result': instance.result,
      'count': instance.count,
      'total': instance.total,
    };
