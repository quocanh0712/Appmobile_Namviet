// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester_bill_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SemesterBillResponseObjectImpl _$$SemesterBillResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$SemesterBillResponseObjectImpl(
      feeId: json['feeId'] as int?,
      feeName: json['feeName'] as String?,
      value: json['value'] as int?,
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      status: json['status'] as int?,
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$$SemesterBillResponseObjectImplToJson(
        _$SemesterBillResponseObjectImpl instance) =>
    <String, dynamic>{
      'feeId': instance.feeId,
      'feeName': instance.feeName,
      'value': instance.value,
      'semester': instance.semester,
      'year': instance.year,
      'status': instance.status,
      'qrCode': instance.qrCode,
    };
