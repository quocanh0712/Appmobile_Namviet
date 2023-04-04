// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester_point_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SemesterPointObject? jsonToNullableSemesterPointObject(Object? json) =>
    SemesterPointObject.fromJson(json as Map<String, dynamic>);

SemesterPointObject jsonToSemesterPointObject(Object? json) =>
    SemesterPointObject.fromJson(json as Map<String, dynamic>);

List<SemesterPointObject?> jsonToListNullableSemesterPointObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SemesterPointObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<SemesterPointObject> jsonToListSemesterPointObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SemesterPointObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SemesterPointObject _$$_SemesterPointObjectFromJson(
        Map<String, dynamic> json) =>
    _$_SemesterPointObject(
      classification: json['classification'] as String?,
      classification10: json['classification10'] as String?,
      rank: (json['rank'] as num?)?.toDouble(),
      rank10: (json['rank10'] as num?)?.toDouble(),
      learningAverage: (json['learningAverage'] as num?)?.toDouble(),
      gpA4: (json['gpA4'] as num?)?.toDouble(),
      gpA10: (json['gpA10'] as num?)?.toDouble(),
      accumulatedCredits: json['accumulatedCredits'] as int?,
      academicCredits: json['academicCredits'] as int?,
      hocKy: json['hoc_ky'] as int?,
      namHoc: json['nam_hoc'],
    );

Map<String, dynamic> _$$_SemesterPointObjectToJson(
        _$_SemesterPointObject instance) =>
    <String, dynamic>{
      'classification': instance.classification,
      'classification10': instance.classification10,
      'rank': instance.rank,
      'rank10': instance.rank10,
      'learningAverage': instance.learningAverage,
      'gpA4': instance.gpA4,
      'gpA10': instance.gpA10,
      'accumulatedCredits': instance.accumulatedCredits,
      'academicCredits': instance.academicCredits,
      'hoc_ky': instance.hocKy,
      'nam_hoc': instance.namHoc,
    };
