// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_insert_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CertificateInsertRequest _$$_CertificateInsertRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CertificateInsertRequest(
      certificateName: json['certificateName'] as String?,
      graduationYear: json['graduationYear'] as int?,
      degree: json['degree'] as String?,
      academicRank: json['academicRank'] as String?,
      studyPlace: json['studyPlace'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$$_CertificateInsertRequestToJson(
        _$_CertificateInsertRequest instance) =>
    <String, dynamic>{
      'certificateName': instance.certificateName,
      'graduationYear': instance.graduationYear,
      'degree': instance.degree,
      'academicRank': instance.academicRank,
      'studyPlace': instance.studyPlace,
      'fileName': instance.fileName,
    };
