// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_schedule_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestScheduleRequestParamsImpl _$$TestScheduleRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScheduleRequestParamsImpl(
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      idUser: json['idUser'] as String?,
    );

Map<String, dynamic> _$$TestScheduleRequestParamsImplToJson(
        _$TestScheduleRequestParamsImpl instance) =>
    <String, dynamic>{
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'semester': instance.semester,
      'year': instance.year,
      'startindex': instance.startindex,
      'length': instance.length,
      'idUser': instance.idUser,
    };
