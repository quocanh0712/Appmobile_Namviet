// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_process_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

WorkingProcessResponse? jsonToNullableWorkingProcessResponse(Object? json) =>
    WorkingProcessResponse.fromJson(json as Map<String, dynamic>);

WorkingProcessResponse jsonToWorkingProcessResponse(Object? json) =>
    WorkingProcessResponse.fromJson(json as Map<String, dynamic>);

List<WorkingProcessResponse?> jsonToListNullableWorkingProcessResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => WorkingProcessResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<WorkingProcessResponse> jsonToListWorkingProcessResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => WorkingProcessResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkingProcessResponse _$$_WorkingProcessResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WorkingProcessResponse(
      id: json['id'] as int?,
      fromdate: json['fromdate'] == null
          ? null
          : DateTime.parse(json['fromdate'] as String),
      todate: json['todate'] == null
          ? null
          : DateTime.parse(json['todate'] as String),
      position: json['position'] as String?,
      workplace: json['workplace'] as String?,
    );

Map<String, dynamic> _$$_WorkingProcessResponseToJson(
        _$_WorkingProcessResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromdate': instance.fromdate?.toIso8601String(),
      'todate': instance.todate?.toIso8601String(),
      'position': instance.position,
      'workplace': instance.workplace,
    };
