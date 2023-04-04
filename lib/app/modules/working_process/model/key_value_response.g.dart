// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_value_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

KeyValueResponse? jsonToNullableKeyValueResponse(Object? json) =>
    KeyValueResponse.fromJson(json as Map<String, dynamic>);

KeyValueResponse jsonToKeyValueResponse(Object? json) =>
    KeyValueResponse.fromJson(json as Map<String, dynamic>);

List<KeyValueResponse?> jsonToListNullableKeyValueResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => KeyValueResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<KeyValueResponse> jsonToListKeyValueResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => KeyValueResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeyValueResponse _$$_KeyValueResponseFromJson(Map<String, dynamic> json) =>
    _$_KeyValueResponse(
      key: json['key'] as int?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_KeyValueResponseToJson(_$_KeyValueResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
