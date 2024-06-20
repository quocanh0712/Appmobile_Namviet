// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_teacher_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

FinanceTeacherResponse?
jsonToNullableFinanceTeacherResponse(Object? json) =>
    FinanceTeacherResponse.fromJson(
        json as Map<String, dynamic>);

FinanceTeacherResponse jsonToFinanceTeacherResponse(
    Object? json) =>
    FinanceTeacherResponse.fromJson(json as Map<String, dynamic>);

List<FinanceTeacherResponse?>
jsonToListNullableFinanceTeacherResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => FinanceTeacherResponse.fromJson(
        e as Map<String, dynamic>))
        .toList();

List<FinanceTeacherResponse>
jsonToListFinanceTeacherResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => FinanceTeacherResponse.fromJson(
        e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceTeacherResponseImpl _$$FinanceTeacherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FinanceTeacherResponseImpl(
      year: json['year'] as String?,
      month: json['month'] as String?,
      salaryInsurance: json['salaryInsurance'] as int?,
      salaryNotInsurance: json['salaryNotInsurance'] as int?,
      accountNumber: json['accountNumber'] as String?,
      bank: json['bank'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$FinanceTeacherResponseImplToJson(
        _$FinanceTeacherResponseImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'salaryInsurance': instance.salaryInsurance,
      'salaryNotInsurance': instance.salaryNotInsurance,
      'accountNumber': instance.accountNumber,
      'bank': instance.bank,
      'note': instance.note,
    };
