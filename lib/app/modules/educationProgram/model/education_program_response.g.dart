// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_program_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

EducationProgramResponse? jsonToNullableEducationProgramResponse(
    Object? json) =>
    EducationProgramResponse.fromJson(json as Map<String, dynamic>);

EducationProgramResponse jsonToEducationProgramResponse(Object? json) =>
    EducationProgramResponse.fromJson(json as Map<String, dynamic>);

List<EducationProgramResponse?> jsonToListNullableEducationProgramResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map(
            (e) => EducationProgramResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<EducationProgramResponse> jsonToListEducationProgramResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map(
            (e) => EducationProgramResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationProgramResponseImpl _$$EducationProgramResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationProgramResponseImpl(
      id: json['id'] as int?,
      coursename: json['coursename'] as String?,
      numbercredits: json['numbercredits'] as int?,
      numberlession: json['numberlession'] as int?,
    );

Map<String, dynamic> _$$EducationProgramResponseImplToJson(
        _$EducationProgramResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coursename': instance.coursename,
      'numbercredits': instance.numbercredits,
      'numberlession': instance.numberlession,
    };
