// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester_finance.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SemesterFinance? jsonToNullableSemesterFinance(Object? json) =>
    SemesterFinance.fromJson(json as Map<String, dynamic>);

SemesterFinance jsonToSemesterFinance(Object? json) =>
    SemesterFinance.fromJson(json as Map<String, dynamic>);

List<SemesterFinance?> jsonToListNullableSemesterFinances(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SemesterFinance.fromJson(e as Map<String, dynamic>))
        .toList();

List<SemesterFinance> jsonToListSemesterFinances(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => SemesterFinance.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SemesterFinance _$$_SemesterFinanceFromJson(Map<String, dynamic> json) =>
    _$_SemesterFinance(
      year: json['year'] as String?,
      semester: json['semester'] as int?,
      totalFee: json['totalFee'] as int?,
      feePaid: json['feePaid'] as int?,
      excessFee: json['excessFee'] as int?,
    );

Map<String, dynamic> _$$_SemesterFinanceToJson(_$_SemesterFinance instance) =>
    <String, dynamic>{
      'year': instance.year,
      'semester': instance.semester,
      'totalFee': instance.totalFee,
      'feePaid': instance.feePaid,
      'excessFee': instance.excessFee,
    };
