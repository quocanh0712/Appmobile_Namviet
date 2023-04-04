// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_schedule_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

TestScheduleObject? jsonToNullableTestScheduleObject(Object? json) =>
    TestScheduleObject.fromJson(json as Map<String, dynamic>);

TestScheduleObject jsonToTestScheduleObject(Object? json) =>
    TestScheduleObject.fromJson(json as Map<String, dynamic>);

List<TestScheduleObject?> jsonToListNullableTestScheduleObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => TestScheduleObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<TestScheduleObject> jsonToListTestScheduleObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => TestScheduleObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestScheduleObject _$$_TestScheduleObjectFromJson(
        Map<String, dynamic> json) =>
    _$_TestScheduleObject(
      dayofweeks: json['dayofweeks'] as String?,
      date: json['date'] as int?,
      month: json['month'] as String?,
      lstCourses: (json['listcourse'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CourseObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TestScheduleObjectToJson(
        _$_TestScheduleObject instance) =>
    <String, dynamic>{
      'dayofweeks': instance.dayofweeks,
      'date': instance.date,
      'month': instance.month,
      'listcourse': instance.lstCourses,
    };
