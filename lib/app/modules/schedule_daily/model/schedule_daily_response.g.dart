// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_daily_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDailyResponseImpl _$$ScheduleDailyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleDailyResponseImpl(
      timestart: json['timestart'] == null
          ? null
          : DateTime.parse(json['timestart'] as String),
      timeend: json['timeend'] == null
          ? null
          : DateTime.parse(json['timeend'] as String),
      id: json['id'] as int?,
      coursename: json['coursename'] as String?,
      roomname: json['roomname'] as String?,
      lesson: json['lesson'] as String?,
    );

Map<String, dynamic> _$$ScheduleDailyResponseImplToJson(
        _$ScheduleDailyResponseImpl instance) =>
    <String, dynamic>{
      'timestart': instance.timestart?.toIso8601String(),
      'timeend': instance.timeend?.toIso8601String(),
      'id': instance.id,
      'coursename': instance.coursename,
      'roomname': instance.roomname,
      'lesson': instance.lesson,
    };
