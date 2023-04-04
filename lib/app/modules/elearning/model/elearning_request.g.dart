// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elearning_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ELearningRequest _$$_ELearningRequestFromJson(Map<String, dynamic> json) =>
    _$_ELearningRequest(
      nowdate: json['nowdate'] == null
          ? null
          : DateTime.parse(json['nowdate'] as String),
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$$_ELearningRequestToJson(_$_ELearningRequest instance) =>
    <String, dynamic>{
      'nowdate': instance.nowdate?.toIso8601String(),
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
    };
