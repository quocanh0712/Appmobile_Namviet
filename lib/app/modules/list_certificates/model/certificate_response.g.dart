// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_response.dart';


// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

CertificateResponse? jsonToNullableCertificateResponse(Object? json) =>
    CertificateResponse.fromJson(json as Map<String, dynamic>);

CertificateResponse jsonToCertificateResponse(Object? json) =>
    CertificateResponse.fromJson(json as Map<String, dynamic>);

List<CertificateResponse?> jsonToListNullableCertificateResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => CertificateResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<CertificateResponse> jsonToListCertificateResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => CertificateResponse.fromJson(e as Map<String, dynamic>))
        .toList();
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
