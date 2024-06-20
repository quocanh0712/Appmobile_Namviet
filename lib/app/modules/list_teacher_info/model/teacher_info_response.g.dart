// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_info_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

TeacherInfoResponse? jsonToNullableTeacherInfoResponse(Object? json) =>
    TeacherInfoResponse.fromJson(json as Map<String, dynamic>);

TeacherInfoResponse jsonToTeacherInfoResponse(Object? json) =>
    TeacherInfoResponse.fromJson(json as Map<String, dynamic>);

List<TeacherInfoResponse?> jsonToListNullableTeacherInfoResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => TeacherInfoResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<TeacherInfoResponse> jsonToListTeacherInfoResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => TeacherInfoResponse.fromJson(e as Map<String, dynamic>))
        .toList();


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherInfoResponseImpl _$$TeacherInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherInfoResponseImpl(
      id: json['id'] as int?,
      teacherName: json['teacherName'] as String?,
      image: json['image'] as String?,
      employeeCode: json['employeeCode'] as String?,
      employeePosition: json['employeePosition'] as String?,
      branch: json['branch'] as String?,
      positionId: json['positionId'] as int?,
      telephone: json['telephone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$TeacherInfoResponseImplToJson(
        _$TeacherInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teacherName': instance.teacherName,
      'image': instance.image,
      'employeeCode': instance.employeeCode,
      'employeePosition': instance.employeePosition,
      'branch': instance.branch,
      'positionId': instance.positionId,
      'telephone': instance.telephone,
      'email': instance.email,
    };
