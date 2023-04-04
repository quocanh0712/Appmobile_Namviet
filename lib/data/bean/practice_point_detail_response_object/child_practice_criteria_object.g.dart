// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_practice_criteria_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ChildPracticeCriteriaObject? jsonToNullableChildPracticeCriteriaObject(
        Object? json) =>
    ChildPracticeCriteriaObject.fromJson(json as Map<String, dynamic>);

ChildPracticeCriteriaObject jsonToChildPracticeCriteriaObject(Object? json) =>
    ChildPracticeCriteriaObject.fromJson(json as Map<String, dynamic>);

List<ChildPracticeCriteriaObject?>
    jsonToListNullableChildPracticeCriteriaObjects(Object? json) =>
        List<Object>.from(json as List)
            .map((e) =>
                ChildPracticeCriteriaObject.fromJson(e as Map<String, dynamic>))
            .toList();

List<ChildPracticeCriteriaObject> jsonToListChildPracticeCriteriaObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
            ChildPracticeCriteriaObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildPracticeCriteriaObject _$$_ChildPracticeCriteriaObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ChildPracticeCriteriaObject(
      id: json['id'] as int?,
      levelCriteriaName: json['levelCriteriaName'] as String?,
      maxPoint: json['maxPoint'] as int?,
      point: json['point'] as int?,
    );

Map<String, dynamic> _$$_ChildPracticeCriteriaObjectToJson(
        _$_ChildPracticeCriteriaObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'levelCriteriaName': instance.levelCriteriaName,
      'maxPoint': instance.maxPoint,
      'point': instance.point,
    };
