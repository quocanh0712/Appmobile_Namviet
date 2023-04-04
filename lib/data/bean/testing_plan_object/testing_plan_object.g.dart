// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testing_plan_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

TestingPlanObject? jsonToNullableTestingPlanObject(Object? json) =>
    TestingPlanObject.fromJson(json as Map<String, dynamic>);

TestingPlanObject jsonToTestingPlanObject(Object? json) =>
    TestingPlanObject.fromJson(json as Map<String, dynamic>);

List<TestingPlanObject?> jsonToListNullableTestingPlanObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => TestingPlanObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<TestingPlanObject> jsonToListTestingPlanObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => TestingPlanObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestingPlanObject _$$_TestingPlanObjectFromJson(Map<String, dynamic> json) =>
    _$_TestingPlanObject(
      isLabel: json['isLabel'] as bool?,
      course: json['course'] as String?,
      time: json['time'] as String?,
      idNumber: json['idNumber'] as int?,
      location: json['location'] as String?,
      studySession: json['studySession'] as int?,
      examTime: json['examTime'] as int?,
      startAt: const JiffyJsonConverter().fromJson(json['startAt'] as String?),
      endAt: const JiffyJsonConverter().fromJson(json['endAt'] as String?),
      isLast: json['isLast'] as bool?,
    );

Map<String, dynamic> _$$_TestingPlanObjectToJson(
        _$_TestingPlanObject instance) =>
    <String, dynamic>{
      'isLabel': instance.isLabel,
      'course': instance.course,
      'time': instance.time,
      'idNumber': instance.idNumber,
      'location': instance.location,
      'studySession': instance.studySession,
      'examTime': instance.examTime,
      'startAt': const JiffyJsonConverter().toJson(instance.startAt),
      'endAt': const JiffyJsonConverter().toJson(instance.endAt),
      'isLast': instance.isLast,
    };
