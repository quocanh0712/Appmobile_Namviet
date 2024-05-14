// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeRequestImpl _$$HomeRequestImplFromJson(Map<String, dynamic> json) =>
    _$HomeRequestImpl(
      iduser: json['iduser'] as String?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      year: json['year'] as String?,
      weeksOfYear: json['weeksOfYear'] as int?,
    );

Map<String, dynamic> _$$HomeRequestImplToJson(_$HomeRequestImpl instance) =>
    <String, dynamic>{
      'iduser': instance.iduser,
      'startindex': instance.startindex,
      'length': instance.length,
      'year': instance.year,
      'weeksOfYear': instance.weeksOfYear,
    };
