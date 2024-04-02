// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_point_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PracticePointRequestParamsImpl _$$PracticePointRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PracticePointRequestParamsImpl(
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      subCriteriaId: json['subCriteriaId'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$PracticePointRequestParamsImplToJson(
        _$PracticePointRequestParamsImpl instance) =>
    <String, dynamic>{
      'semester': instance.semester,
      'year': instance.year,
      'subCriteriaId': instance.subCriteriaId,
      'startindex': instance.startindex,
      'length': instance.length,
    };
