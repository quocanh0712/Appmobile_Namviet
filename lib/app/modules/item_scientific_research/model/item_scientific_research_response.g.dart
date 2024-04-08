
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_scientific_research_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ItemScientificResearchResponse? jsonToNullableItemScientificResearchResponse(
    Object? json) =>
    ItemScientificResearchResponse.fromJson(json as Map<String, dynamic>);

ItemScientificResearchResponse jsonToItemScientificResearchResponse(
    Object? json) =>
    ItemScientificResearchResponse.fromJson(json as Map<String, dynamic>);

List<ItemScientificResearchResponse?>
jsonToListNullableItemScientificResearchResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ItemScientificResearchResponse.fromJson(
        e as Map<String, dynamic>))
        .toList();

List<ItemScientificResearchResponse> jsonToListItemScientificResearchResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
        ItemScientificResearchResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemScientificResearchResponseImpl
    _$$ItemScientificResearchResponseImplFromJson(Map<String, dynamic> json) =>
        _$ItemScientificResearchResponseImpl(
          nckhId: json['nckhId'] as int?,
          title: json['title'] as String?,
          postOn: json['postOn'] as String?,
          postAt: json['postAt'] as String?,
          imageUrl: json['imageUrl'] as String?,
          href: json['href'] as String?,
        );

Map<String, dynamic> _$$ItemScientificResearchResponseImplToJson(
        _$ItemScientificResearchResponseImpl instance) =>
    <String, dynamic>{
      'nckhId': instance.nckhId,
      'title': instance.title,
      'postOn': instance.postOn,
      'postAt': instance.postAt,
      'imageUrl': instance.imageUrl,
      'href': instance.href,
    };
