// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_email_response.dart';

    // **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

CreateEmailResponse? jsonToNullableCreateEmailResponse(Object? json) =>
    CreateEmailResponse.fromJson(json as Map<String, dynamic>);

CreateEmailResponse jsonToCreateEmailResponse(Object? json) =>
    CreateEmailResponse.fromJson(json as Map<String, dynamic>);

    List<CreateEmailResponse?> jsonToListNullableCreateEmailResponse(Object? json) =>
        List<Object>.from(json as List)
            .map((e) => CreateEmailResponse.fromJson(e as Map<String, dynamic>))
            .toList();

    List<CreateEmailResponse> jsonToListCreateEmailResponse(Object? json) =>
        List<Object>.from(json as List)
            .map((e) => CreateEmailResponse.fromJson(e as Map<String, dynamic>))
            .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateEmailResponseImpl _$$CreateEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateEmailResponseImpl(
      iduser: json['iduser'] as String?,
      listNguoiNhan: (json['listNguoiNhan'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      tieuDe: json['tieuDe'] as String?,
      noiDung: json['noiDung'] as String?,
      listFile: (json['listFile'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      phanLoai: json['phanLoai'] as int?,
    );

Map<String, dynamic> _$$CreateEmailResponseImplToJson(
        _$CreateEmailResponseImpl instance) =>
    <String, dynamic>{
      'iduser': instance.iduser,
      'listNguoiNhan': instance.listNguoiNhan,
      'tieuDe': instance.tieuDe,
      'noiDung': instance.noiDung,
      'listFile': instance.listFile,
      'phanLoai': instance.phanLoai,
    };
