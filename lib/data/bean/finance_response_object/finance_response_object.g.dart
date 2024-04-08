// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_response_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

FinanceResponseObject? jsonToNullableFinanceResponseObject(Object? json) =>
    FinanceResponseObject.fromJson(json as Map<String, dynamic>);

FinanceResponseObject jsonToFinanceResponseObject(Object? json) =>
    FinanceResponseObject.fromJson(json as Map<String, dynamic>);

List<FinanceResponseObject?> jsonToListNullableFinanceResponseObjects(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => FinanceResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<FinanceResponseObject> jsonToListFinanceResponseObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => FinanceResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

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
