// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_process_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

LanguageProcessResponse? jsonToNullableLanguageProcessResponse(Object? json) =>
    LanguageProcessResponse.fromJson(json as Map<String, dynamic>);

LanguageProcessResponse jsonToLanguageProcessResponse(Object? json) =>
    LanguageProcessResponse.fromJson(json as Map<String, dynamic>);

List<LanguageProcessResponse?> jsonToListNullableLanguageProcessResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => LanguageProcessResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<LanguageProcessResponse> jsonToListLanguageProcessResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => LanguageProcessResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageProcessResponse _$$_LanguageProcessResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LanguageProcessResponse(
      id: json['id'] as int?,
      foreignlanguage: json['foreignlanguage'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$$_LanguageProcessResponseToJson(
        _$_LanguageProcessResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'foreignlanguage': instance.foreignlanguage,
      'level': instance.level,
    };
