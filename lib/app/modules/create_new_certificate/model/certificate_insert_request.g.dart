// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_insert_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificateInsertRequestImpl _$$CertificateInsertRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificateInsertRequestImpl(
      certificateName: json['certificateName'] as String?,
      graduationYear: json['graduationYear'] as int?,
      degree: json['degree'] as String?,
      academicRank: json['academicRank'] as String?,
      studyPlace: json['studyPlace'] as String?,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$$CertificateInsertRequestImplToJson(
        _$CertificateInsertRequestImpl instance) =>
    <String, dynamic>{
      'certificateName': instance.certificateName,
      'graduationYear': instance.graduationYear,
      'degree': instance.degree,
      'academicRank': instance.academicRank,
      'studyPlace': instance.studyPlace,
      'fileName': instance.fileName,
    };
