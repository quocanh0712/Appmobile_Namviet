// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceRequestParamsImpl _$$FinanceRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$FinanceRequestParamsImpl(
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      idKhoanThu: json['idKhoanThu'] as int?,
      status: json['status'] as int?,
      startindex: json['startindex'] as int? ?? 1,
      length: json['length'] as int? ?? 100,
    );

Map<String, dynamic> _$$FinanceRequestParamsImplToJson(
        _$FinanceRequestParamsImpl instance) =>
    <String, dynamic>{
      'semester': instance.semester,
      'year': instance.year,
      'idKhoanThu': instance.idKhoanThu,
      'status': instance.status,
      'startindex': instance.startindex,
      'length': instance.length,
    };
