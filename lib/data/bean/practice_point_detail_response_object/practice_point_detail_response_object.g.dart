// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_point_detail_response_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

PracticePointDetailResponseObject?
    jsonToNullablePracticePointDetailResponseObject(Object? json) =>
        PracticePointDetailResponseObject.fromJson(
            json as Map<String, dynamic>);

PracticePointDetailResponseObject jsonToPracticePointDetailResponseObject(
        Object? json) =>
    PracticePointDetailResponseObject.fromJson(json as Map<String, dynamic>);

List<PracticePointDetailResponseObject?>
    jsonToListNullablePracticePointDetailResponseObjects(Object? json) =>
        List<Object>.from(json as List)
            .map((e) => PracticePointDetailResponseObject.fromJson(
                e as Map<String, dynamic>))
            .toList();

List<PracticePointDetailResponseObject>
    jsonToListPracticePointDetailResponseObjects(Object? json) =>
        List<Object>.from(json as List)
            .map((e) => PracticePointDetailResponseObject.fromJson(
                e as Map<String, dynamic>))
            .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PracticePointDetailResponseObject
    _$$_PracticePointDetailResponseObjectFromJson(Map<String, dynamic> json) =>
        _$_PracticePointDetailResponseObject(
          id: json['id'] as int?,
          criteriaName: json['criteriaName'] as String?,
          score: json['score'] as int?,
          criterias: (json['criterias'] as List<dynamic>?)
              ?.map((e) => ChildPracticeCriteriaObject.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_PracticePointDetailResponseObjectToJson(
        _$_PracticePointDetailResponseObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'criteriaName': instance.criteriaName,
      'score': instance.score,
      'criterias': instance.criterias,
    };
