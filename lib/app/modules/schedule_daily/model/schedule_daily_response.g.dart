// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_daily_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ScheduleDailyResponse? jsonToNullableScheduleDailyResponse(Object? json) =>
    ScheduleDailyResponse.fromJson(json as Map<String, dynamic>);

ScheduleDailyResponse jsonToScheduleDailyResponse(Object? json) =>
    ScheduleDailyResponse.fromJson(json as Map<String, dynamic>);

List<ScheduleDailyResponse?> jsonToListNullableScheduleDailyResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ScheduleDailyResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ScheduleDailyResponse> jsonToListScheduleDailyResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ScheduleDailyResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDailyResponse _$$_ScheduleDailyResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleDailyResponse(
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

Map<String, dynamic> _$$_ScheduleDailyResponseToJson(
        _$_ScheduleDailyResponse instance) =>
    <String, dynamic>{
      'timestart': instance.timestart?.toIso8601String(),
      'timeend': instance.timeend?.toIso8601String(),
      'id': instance.id,
      'coursename': instance.coursename,
      'roomname': instance.roomname,
      'lesson': instance.lesson,
    };
