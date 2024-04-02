// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester_finance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SemesterFinanceImpl _$$SemesterFinanceImplFromJson(
        Map<String, dynamic> json) =>
    _$SemesterFinanceImpl(
      year: json['year'] as String?,
      semester: json['semester'] as int?,
      totalFee: json['totalFee'] as int?,
      feePaid: json['feePaid'] as int?,
      excessFee: json['excessFee'] as int?,
    );

Map<String, dynamic> _$$SemesterFinanceImplToJson(
        _$SemesterFinanceImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'semester': instance.semester,
      'totalFee': instance.totalFee,
      'feePaid': instance.feePaid,
      'excessFee': instance.excessFee,
    };
