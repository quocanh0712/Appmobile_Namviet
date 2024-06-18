// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_email_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AllEmailResponse? jsonToNullableAllEmailResponse(Object? json) =>
    AllEmailResponse.fromJson(json as Map<String, dynamic>);

AllEmailResponse jsonToAllEmailResponse(Object? json) =>
    AllEmailResponse.fromJson(json as Map<String, dynamic>);

List<AllEmailResponse?> jsonToListNullableAllEmailResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllEmailResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AllEmailResponse> jsonToListAllEmailResponse(
    Object? json) =>
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
      listNguoiNhan: (json['listNguoiNhan'] as List<dynamic>?)
          ?.map((e) => NguoiNhan.fromJson(e as Map<String, dynamic>))
          .toList(),
      listFile: json['listFile'] as List<dynamic>?,
      listNguoiGui: (json['listNguoiGui'] as List<dynamic>?)
          ?.map((e) => NguoiGui.fromJson(e as Map<String, dynamic>))
          .toList(),
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
    };

_$NguoiNhanImpl _$$NguoiNhanImplFromJson(Map<String, dynamic> json) =>
    _$NguoiNhanImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$NguoiNhanImplToJson(_$NguoiNhanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
    };

_$NguoiGuiImpl _$$NguoiGuiImplFromJson(Map<String, dynamic> json) =>
    _$NguoiGuiImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$NguoiGuiImplToJson(_$NguoiGuiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
    };
