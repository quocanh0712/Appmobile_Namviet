// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_time_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleTimeRequestImpl _$$ScheduleTimeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleTimeRequestImpl(
      year: json['year'] as String?,
      semester: json['semester'] as int?,
      session: json['session'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$ScheduleTimeRequestImplToJson(
        _$ScheduleTimeRequestImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'semester': instance.semester,
      'session': instance.session,
      'startindex': instance.startindex,
      'length': instance.length,
    };
