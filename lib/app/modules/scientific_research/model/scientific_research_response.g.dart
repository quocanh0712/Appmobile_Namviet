
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scientific_research_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ScientificResearchResponse? jsonToNullableScientificResearchResponse(
    Object? json) =>
    ScientificResearchResponse.fromJson(json as Map<String, dynamic>);

ScientificResearchResponse jsonToScientificResearchResponse(Object? json) =>
    ScientificResearchResponse.fromJson(json as Map<String, dynamic>);

List<ScientificResearchResponse?> jsonToListNullableScientificResearchResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        ScientificResearchResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ScientificResearchResponse> jsonToListScientificResearchResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        ScientificResearchResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScientificResearchResponseImpl _$$ScientificResearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScientificResearchResponseImpl(
      typeId: json['typeId'] as int?,
      type: json['type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ScientificResearchResponseImplToJson(
        _$ScientificResearchResponseImpl instance) =>
    <String, dynamic>{
      'typeId': instance.typeId,
      'type': instance.type,
      'description': instance.description,
    };
