// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_result_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SurveyResultResponse? jsonToNullableSurveyResultResponse(Object? json) =>
    SurveyResultResponse.fromJson(json as Map<String, dynamic>);

SurveyResultResponse jsonToSurveyResultResponse(Object? json) =>
    SurveyResultResponse.fromJson(json as Map<String, dynamic>);

List<SurveyResultResponse?> jsonToListNullableSurveyResultResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SurveyResultResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<SurveyResultResponse> jsonToListSurveyResultResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SurveyResultResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyResultResponse _$$_SurveyResultResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SurveyResultResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      semester: json['semester'] as String?,
      year: json['year'] as String?,
    );

Map<String, dynamic> _$$_SurveyResultResponseToJson(
        _$_SurveyResultResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'semester': instance.semester,
      'year': instance.year,
    };
