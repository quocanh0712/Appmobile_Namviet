// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificateResponseImpl _$$CertificateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificateResponseImpl(
      id: json['id'] as int?,
      certificateName: json['certificateName'] as String?,
      graduationYear: json['graduationYear'] as int?,
      degree: json['degree'] as String?,
      academicRank: json['academicRank'] as String?,
      studyPlace: json['studyPlace'] as String?,
      fileName: json['fileName'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$CertificateResponseImplToJson(
        _$CertificateResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'certificateName': instance.certificateName,
      'graduationYear': instance.graduationYear,
      'degree': instance.degree,
      'academicRank': instance.academicRank,
      'studyPlace': instance.studyPlace,
      'fileName': instance.fileName,
      'status': instance.status,
    };
