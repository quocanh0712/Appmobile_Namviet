// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_point_detail_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PracticePointDetailResponseObjectImpl
    _$$PracticePointDetailResponseObjectImplFromJson(
            Map<String, dynamic> json) =>
        _$PracticePointDetailResponseObjectImpl(
          id: json['id'] as int?,
          criteriaName: json['criteriaName'] as String?,
          score: json['score'] as int?,
          criterias: (json['criterias'] as List<dynamic>?)
              ?.map((e) => ChildPracticeCriteriaObject.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PracticePointDetailResponseObjectImplToJson(
        _$PracticePointDetailResponseObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'criteriaName': instance.criteriaName,
      'score': instance.score,
      'criterias': instance.criterias,
    };
