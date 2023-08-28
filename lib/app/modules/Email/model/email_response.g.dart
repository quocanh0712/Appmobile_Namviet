// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

EmailResponse? jsonToNullableEmailResponse(Object? json) =>
    EmailResponse.fromJson(json as Map<String, dynamic>);

EmailResponse jsonToEmailResponse(Object? json) =>
    EmailResponse.fromJson(json as Map<String, dynamic>);

List<EmailResponse?> jsonToListNullableEmailResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => EmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<EmailResponse> jsonToListEmailResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => EmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailResponse _$$_EmailResponseFromJson(Map<String, dynamic> json) =>
    _$_EmailResponse(
      id: json['id'] as int?,
      NguoiGui: json['NguoiGui'] as String?,
      TieuDe: json['TieuDe'] as String?,
      ThoiGian: json['ThoiGian'] as String?,
    );

Map<String, dynamic> _$$_EmailResponseToJson(_$_EmailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'NguoiGui': instance.NguoiGui,
      'TieuDe': instance.TieuDe,
      'ThoiGian': instance.ThoiGian,
    };
