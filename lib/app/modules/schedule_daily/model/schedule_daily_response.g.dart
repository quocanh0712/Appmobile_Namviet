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

_$ScheduleDailyResponseImpl _$$ScheduleDailyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleDailyResponseImpl(
      timestart: json['timestart'] as String?,
      timeend: json['timeend'] as String?,
      id: json['id'] as int?,
      coursename: json['coursename'] as String?,
      roomname: json['roomname'] as String?,
      lession: json['lession'] as String?,
    );

Map<String, dynamic> _$$ScheduleDailyResponseImplToJson(
        _$ScheduleDailyResponseImpl instance) =>
    <String, dynamic>{
      'timestart': instance.timestart,
      'timeend': instance.timeend,
      'id': instance.id,
      'coursename': instance.coursename,
      'roomname': instance.roomname,
      'lession': instance.lession,
    };
