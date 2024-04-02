// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceResponseObjectImpl _$$FinanceResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$FinanceResponseObjectImpl(
      totalFee: json['totalFee'] as int?,
      feePaid: json['feePaid'] as int?,
      excessFee: json['excessFee'] as int?,
      semesters: (json['semesters'] as List<dynamic>?)
          ?.map((e) => SemesterFinance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FinanceResponseObjectImplToJson(
        _$FinanceResponseObjectImpl instance) =>
    <String, dynamic>{
      'totalFee': instance.totalFee,
      'feePaid': instance.feePaid,
      'excessFee': instance.excessFee,
      'semesters': instance.semesters,
    };
