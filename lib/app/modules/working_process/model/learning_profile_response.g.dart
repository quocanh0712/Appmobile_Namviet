// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_profile_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

LearningProfileResponse? jsonToNullableLearningProfileResponse(Object? json) =>
    LearningProfileResponse.fromJson(json as Map<String, dynamic>);

LearningProfileResponse jsonToLearningProfileResponse(Object? json) =>
    LearningProfileResponse.fromJson(json as Map<String, dynamic>);

List<LearningProfileResponse?> jsonToListNullableLearningProfileResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => LearningProfileResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<LearningProfileResponse> jsonToListLearningProfileResponses(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => LearningProfileResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningProfileResponse _$$_LearningProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LearningProfileResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      academicrankid: json['academicrankid'] as int?,
      year: json['year'] as int?,
      degreeid: json['degreeid'] as int?,
      researchid: json['researchid'] as int?,
      positionid: json['positionid'] as int?,
      dateofbirth: json['dateofbirth'] as String?,
      placeofbirth: json['placeofbirth'] as String?,
      phonenumber: json['phonenumber'] as String?,
      email: json['email'] as String?,
      agencyname: json['agencyname'] as String?,
    );

Map<String, dynamic> _$$_LearningProfileResponseToJson(
        _$_LearningProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'academicrankid': instance.academicrankid,
      'year': instance.year,
      'degreeid': instance.degreeid,
      'researchid': instance.researchid,
      'positionid': instance.positionid,
      'dateofbirth': instance.dateofbirth,
      'placeofbirth': instance.placeofbirth,
      'phonenumber': instance.phonenumber,
      'email': instance.email,
      'agencyname': instance.agencyname,
    };
