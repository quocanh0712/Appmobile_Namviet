// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_task_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ReportTaskResponse? jsonToNullableReportTaskResponse(Object? json) =>
    ReportTaskResponse.fromJson(json as Map<String, dynamic>);

ReportTaskResponse jsonToReportTaskResponse(Object? json) =>
    ReportTaskResponse.fromJson(json as Map<String, dynamic>);

List<ReportTaskResponse?> jsonToListNullableReportTaskResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ReportTaskResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ReportTaskResponse> jsonToListReportTaskResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ReportTaskResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportTaskResponse _$$_ReportTaskResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ReportTaskResponse(
      id: json['id'] as int?,
      VanBan: json['VanBan'] as String?,
      NoiDung: json['NoiDung'] as String?,
      TrangThai: json['TrangThai'] as String?,
    );

Map<String, dynamic> _$$_ReportTaskResponseToJson(
        _$_ReportTaskResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'VanBan': instance.VanBan,
      'NoiDung': instance.NoiDung,
      'TrangThai': instance.TrangThai,
    };
