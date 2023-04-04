// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_time_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleTimeRequest _$$_ScheduleTimeRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleTimeRequest(
      year: json['year'] as String?,
      semester: json['semester'] as int?,
      session: json['session'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$_ScheduleTimeRequestToJson(
        _$_ScheduleTimeRequest instance) =>
    <String, dynamic>{
      'year': instance.year,
      'semester': instance.semester,
      'session': instance.session,
      'startindex': instance.startindex,
      'length': instance.length,
    };
