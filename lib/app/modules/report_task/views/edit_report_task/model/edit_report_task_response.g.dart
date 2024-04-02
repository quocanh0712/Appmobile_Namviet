// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_report_task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditReportTaskResponseImpl _$$EditReportTaskResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditReportTaskResponseImpl(
      listForm: (json['listForm'] as List<dynamic>?)
          ?.map((e) => FormFieldData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditReportTaskResponseImplToJson(
        _$EditReportTaskResponseImpl instance) =>
    <String, dynamic>{
      'listForm': instance.listForm,
    };
