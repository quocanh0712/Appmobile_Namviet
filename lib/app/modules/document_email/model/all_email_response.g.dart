// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_email_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AllEmailResponse? jsonToNullableAllEmailResponse(Object? json) =>
    AllEmailResponse.fromJson(json as Map<String, dynamic>);

AllEmailResponse jsonToAllEmailResponse(Object? json) =>
    AllEmailResponse.fromJson(json as Map<String, dynamic>);

List<AllEmailResponse?> jsonToListNullableAllEmailResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllEmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AllEmailResponse> jsonToListAllEmailResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllEmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllEmailResponseImpl _$$AllEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllEmailResponseImpl(
      id: json['id'] as int?,
      noiDung: json['noiDung'] as String?,
      tieuDe: json['tieuDe'] as String?,
      idTrangThai: json['idTrangThai'] as int?,
      createdDate: json['createdDate'] as String?,
      listNguoiNhan: json['listNguoiNhan'] as String?,
      listFile: json['listFile'] as String?,
      listNguoiGui: json['listNguoiGui'] as String?,
      emailType: json['emailType'] as String?,
    );

Map<String, dynamic> _$$AllEmailResponseImplToJson(
        _$AllEmailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'noiDung': instance.noiDung,
      'tieuDe': instance.tieuDe,
      'idTrangThai': instance.idTrangThai,
      'createdDate': instance.createdDate,
      'listNguoiNhan': instance.listNguoiNhan,
      'listFile': instance.listFile,
      'listNguoiGui': instance.listNguoiGui,
      'emailType': instance.emailType,
    };
