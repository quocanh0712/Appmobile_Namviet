// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_result_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearningResultRequestParamsImpl _$$LearningResultRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningResultRequestParamsImpl(
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      courseId: json['courseId'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$LearningResultRequestParamsImplToJson(
        _$LearningResultRequestParamsImpl instance) =>
    <String, dynamic>{
      'semester': instance.semester,
      'year': instance.year,
      'courseId': instance.courseId,
      'startindex': instance.startindex,
      'length': instance.length,
    };
