// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_result_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyResultRequestImpl _$$SurveyResultRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SurveyResultRequestImpl(
      year: json['year'] as String?,
      semester: json['semester'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$SurveyResultRequestImplToJson(
        _$SurveyResultRequestImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'semester': instance.semester,
      'startindex': instance.startindex,
      'length': instance.length,
    };
