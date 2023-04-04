// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_practice_criteria_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ParentPracticeCriteriaObject? jsonToNullableParentPracticeCriteriaObject(
        Object? json) =>
    ParentPracticeCriteriaObject.fromJson(json as Map<String, dynamic>);

ParentPracticeCriteriaObject jsonToParentPracticeCriteriaObject(Object? json) =>
    ParentPracticeCriteriaObject.fromJson(json as Map<String, dynamic>);

List<ParentPracticeCriteriaObject?>
    jsonToListNullableParentPracticeCriteriaObjects(Object? json) =>
        List<Object>.from(json as List)
            .map((e) => ParentPracticeCriteriaObject.fromJson(
                e as Map<String, dynamic>))
            .toList();

List<ParentPracticeCriteriaObject> jsonToListParentPracticeCriteriaObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
            ParentPracticeCriteriaObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParentPracticeCriteriaObject _$$_ParentPracticeCriteriaObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ParentPracticeCriteriaObject(
      id: json['id'] as int?,
      typeCriteriaName: json['typeCriteriaName'] as String?,
      totalScore: json['totalScore'] as int?,
    );

Map<String, dynamic> _$$_ParentPracticeCriteriaObjectToJson(
        _$_ParentPracticeCriteriaObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeCriteriaName': instance.typeCriteriaName,
      'totalScore': instance.totalScore,
    };
