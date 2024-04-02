// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleTimeResponseImpl _$$ScheduleTimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleTimeResponseImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      listcourse: (json['listcourse'] as List<dynamic>?)
          ?.map((e) => CourseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleTimeResponseImplToJson(
        _$ScheduleTimeResponseImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'listcourse': instance.listcourse,
    };

_$CourseItemImpl _$$CourseItemImplFromJson(Map<String, dynamic> json) =>
    _$CourseItemImpl(
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

Map<String, dynamic> _$$CourseItemImplToJson(_$CourseItemImpl instance) =>
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
