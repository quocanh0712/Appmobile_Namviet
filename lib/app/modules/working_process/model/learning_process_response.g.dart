// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_process_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearningProcessResponseImpl _$$LearningProcessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningProcessResponseImpl(
      id: json['id'] as int?,
      fromdate: json['fromdate'] == null
          ? null
          : DateTime.parse(json['fromdate'] as String),
      todate: json['todate'] == null
          ? null
          : DateTime.parse(json['todate'] as String),
      major: json['major'] as String?,
      trainingplace: json['trainingplace'] as String?,
    );

Map<String, dynamic> _$$LearningProcessResponseImplToJson(
        _$LearningProcessResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromdate': instance.fromdate?.toIso8601String(),
      'todate': instance.todate?.toIso8601String(),
      'major': instance.major,
      'trainingplace': instance.trainingplace,
    };
