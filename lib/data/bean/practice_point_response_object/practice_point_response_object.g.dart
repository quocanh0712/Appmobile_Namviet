// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_point_response_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

PracticePointResponseObject? jsonToNullablePracticePointResponseObject(
    Object? json) =>
    PracticePointResponseObject.fromJson(json as Map<String, dynamic>);

PracticePointResponseObject jsonToPracticePointResponseObject(Object? json) =>
    PracticePointResponseObject.fromJson(json as Map<String, dynamic>);

List<PracticePointResponseObject?>
jsonToListNullablePracticePointResponseObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        PracticePointResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<PracticePointResponseObject> jsonToListPracticePointResponseObjects(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        PracticePointResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PracticePointResponseObjectImpl _$$PracticePointResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$PracticePointResponseObjectImpl(
      sum: json['sum'] as int?,
      rank: (json['rank'] as num?)?.toDouble(),
      criterias: (json['criterias'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ParentPracticeCriteriaObject.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PracticePointResponseObjectImplToJson(
        _$PracticePointResponseObjectImpl instance) =>
    <String, dynamic>{
      'sum': instance.sum,
      'rank': instance.rank,
      'criterias': instance.criterias,
    };
