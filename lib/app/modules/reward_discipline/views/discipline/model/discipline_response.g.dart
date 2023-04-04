// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discipline_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

DisciplineResponse? jsonToNullableDisciplineResponse(Object? json) =>
    DisciplineResponse.fromJson(json as Map<String, dynamic>);

DisciplineResponse jsonToDisciplineResponse(Object? json) =>
    DisciplineResponse.fromJson(json as Map<String, dynamic>);

List<DisciplineResponse?> jsonToListNullableDisciplineResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DisciplineResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<DisciplineResponse> jsonToListDisciplineResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DisciplineResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DisciplineResponse _$$_DisciplineResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DisciplineResponse(
      id: json['id'] as int?,
      discipline: json['discipline'] as String?,
      content: json['content'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_DisciplineResponseToJson(
        _$_DisciplineResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discipline': instance.discipline,
      'content': instance.content,
      'icon': instance.icon,
      'status': instance.status,
    };
