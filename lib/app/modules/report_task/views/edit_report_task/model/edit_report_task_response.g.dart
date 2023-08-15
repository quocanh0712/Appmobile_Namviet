// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_report_task_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

EditReportTaskResponse? jsonToNullableEditReportTaskResponse(Object? json) =>
    EditReportTaskResponse.fromJson(json as Map<String, dynamic>);

EditReportTaskResponse jsonToEditReportTaskResponse(Object? json) =>
    EditReportTaskResponse.fromJson(json as Map<String, dynamic>);

List<EditReportTaskResponse?> jsonToListNullableEditReportTaskResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => EditReportTaskResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<EditReportTaskResponse> jsonToListEditReportTaskResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => EditReportTaskResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditReportTaskResponse _$$_EditReportTaskResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EditReportTaskResponse(
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EditReportTaskResponseToJson(
        _$_EditReportTaskResponse instance) =>
    <String, dynamic>{
      'listForm': instance.listForm,
    };
