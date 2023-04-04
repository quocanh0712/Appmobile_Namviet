// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_time_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ScheduleTimeResponse? jsonToNullableScheduleTimeResponse(Object? json) =>
    ScheduleTimeResponse.fromJson(json as Map<String, dynamic>);

ScheduleTimeResponse jsonToScheduleTimeResponse(Object? json) =>
    ScheduleTimeResponse.fromJson(json as Map<String, dynamic>);

List<ScheduleTimeResponse?> jsonToListNullableScheduleTimeResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ScheduleTimeResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ScheduleTimeResponse> jsonToListScheduleTimeResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ScheduleTimeResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleTimeResponse _$$_ScheduleTimeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ScheduleTimeResponse(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      listcourse: (json['listcourse'] as List<dynamic>?)
          ?.map((e) => CourseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleTimeResponseToJson(
        _$_ScheduleTimeResponse instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'listcourse': instance.listcourse,
    };

_$_CourseItem _$$_CourseItemFromJson(Map<String, dynamic> json) =>
    _$_CourseItem(
      id: json['id'] as int?,
      coursename: json['coursename'] as String?,
      numbercredits: json['numbercredits'] as int?,
      numberlession: json['numberlession'] as int?,
      coefficient: json['coefficient'] as int?,
      gpaPoint: json['gpaPoint'] as int?,
      gpa: json['gpa'] as int?,
      roomname: json['roomname'] as String?,
      timestart: json['timestart'] == null
          ? null
          : DateTime.parse(json['timestart'] as String),
      timeend: json['timeend'] == null
          ? null
          : DateTime.parse(json['timeend'] as String),
      lession: json['lession'] as String?,
      rank: json['rank'] as int?,
    );

Map<String, dynamic> _$$_CourseItemToJson(_$_CourseItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coursename': instance.coursename,
      'numbercredits': instance.numbercredits,
      'numberlession': instance.numberlession,
      'coefficient': instance.coefficient,
      'gpaPoint': instance.gpaPoint,
      'gpa': instance.gpa,
      'roomname': instance.roomname,
      'timestart': instance.timestart?.toIso8601String(),
      'timeend': instance.timeend?.toIso8601String(),
      'lession': instance.lession,
      'rank': instance.rank,
    };
