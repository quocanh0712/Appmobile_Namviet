// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_time_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleTimeRequestImpl _$$ScheduleTimeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleTimeRequestImpl(
      year: json['year'] as String?,
      nowdate: json['nowdate'] as String?,
      weeksOfYear: json['weeksOfYear'] as int?,
      semester: json['semester'] as int?,
      session: json['session'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      idUser: json['idUser'] as String?,
    );

Map<String, dynamic> _$$ScheduleTimeRequestImplToJson(
        _$ScheduleTimeRequestImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'nowdate': instance.nowdate,
      'weeksOfYear': instance.weeksOfYear,
      'semester': instance.semester,
      'session': instance.session,
      'startindex': instance.startindex,
      'length': instance.length,
      'idUser': instance.idUser,
    };
