// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'semester_bill_response_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SemesterBillResponseObject? jsonToNullableSemesterBillResponseObject(
        Object? json) =>
    SemesterBillResponseObject.fromJson(json as Map<String, dynamic>);

SemesterBillResponseObject jsonToSemesterBillResponseObject(Object? json) =>
    SemesterBillResponseObject.fromJson(json as Map<String, dynamic>);

List<SemesterBillResponseObject?> jsonToListNullableSemesterBillResponseObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
            SemesterBillResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<SemesterBillResponseObject> jsonToListSemesterBillResponseObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) =>
            SemesterBillResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SemesterBillResponseObject _$$_SemesterBillResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_SemesterBillResponseObject(
      feeId: json['feeId'] as int?,
      feeName: json['feeName'] as String?,
      value: json['value'] as int?,
      semester: json['semester'] as int?,
      year: json['year'] as String?,
      status: json['status'] as int?,
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$$_SemesterBillResponseObjectToJson(
        _$_SemesterBillResponseObject instance) =>
    <String, dynamic>{
      'feeId': instance.feeId,
      'feeName': instance.feeName,
      'value': instance.value,
      'semester': instance.semester,
      'year': instance.year,
      'status': instance.status,
      'qrCode': instance.qrCode,
    };
