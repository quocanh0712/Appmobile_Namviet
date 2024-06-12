// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_item_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SurveyItemResponse? jsonToNullableSurveyItemResponse(Object? json) =>
    SurveyItemResponse.fromJson(json as Map<String, dynamic>);

SurveyItemResponse jsonToSurveyItemResponse(Object? json) =>
    SurveyItemResponse.fromJson(json as Map<String, dynamic>);

List<SurveyItemResponse?> jsonToListNullableSurveyItemResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SurveyItemResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<SurveyItemResponse> jsonToListSurveyItemResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SurveyItemResponse.fromJson(e as Map<String, dynamic>))
        .toList();


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyItemResponseImpl _$$SurveyItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SurveyItemResponseImpl(
      criteria: json['criteria'] as String?,
      result: json['result'] as String?,
      count: json['count'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$SurveyItemResponseImplToJson(
        _$SurveyItemResponseImpl instance) =>
    <String, dynamic>{
      'criteria': instance.criteria,
      'result': instance.result,
      'count': instance.count,
      'total': instance.total,
    };
