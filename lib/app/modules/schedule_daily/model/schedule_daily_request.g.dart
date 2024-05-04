// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_daily_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDailyRequestImpl _$$ScheduleDailyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleDailyRequestImpl(
      idUser: json['idUser'] as String?,
      nowdate: json['nowdate'] as String?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      weeksOfYear: json['weeksOfYear'] as int?,
      year: json['year'] as String?,
    );

Map<String, dynamic> _$$ScheduleDailyRequestImplToJson(
        _$ScheduleDailyRequestImpl instance) =>
    <String, dynamic>{
      'idUser': instance.idUser,
      'nowdate': instance.nowdate,
      'startindex': instance.startindex,
      'length': instance.length,
      'weeksOfYear': instance.weeksOfYear,
      'year': instance.year,
    };
