// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_schedule_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestScheduleObjectImpl _$$TestScheduleObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScheduleObjectImpl(
      dayofweeks: json['dayofweeks'] as String?,
      date: json['date'] as int?,
      month: json['month'] as String?,
      lstCourses: (json['listcourse'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CourseObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestScheduleObjectImplToJson(
        _$TestScheduleObjectImpl instance) =>
    <String, dynamic>{
      'dayofweeks': instance.dayofweeks,
      'date': instance.date,
      'month': instance.month,
      'listcourse': instance.lstCourses,
    };
