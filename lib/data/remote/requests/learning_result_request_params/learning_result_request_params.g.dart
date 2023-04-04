// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_result_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningResultRequestParams _$$_LearningResultRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_LearningResultRequestParams(
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      courseId: json['courseId'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$_LearningResultRequestParamsToJson(
        _$_LearningResultRequestParams instance) =>
    <String, dynamic>{
      'semester': instance.semester,
      'year': instance.year,
      'courseId': instance.courseId,
      'startindex': instance.startindex,
      'length': instance.length,
    };
