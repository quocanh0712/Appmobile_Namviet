// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearningProfileResponseImpl _$$LearningProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningProfileResponseImpl(
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

Map<String, dynamic> _$$LearningProfileResponseImplToJson(
        _$LearningProfileResponseImpl instance) =>
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
