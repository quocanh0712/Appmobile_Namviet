// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportTaskResponseImpl _$$ReportTaskResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportTaskResponseImpl(
      id: json['id'] as int?,
      VanBan: json['VanBan'] as String?,
      NoiDung: json['NoiDung'] as String?,
      TrangThai: json['TrangThai'] as String?,
    );

Map<String, dynamic> _$$ReportTaskResponseImplToJson(
        _$ReportTaskResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'VanBan': instance.VanBan,
      'NoiDung': instance.NoiDung,
      'TrangThai': instance.TrangThai,
    };
