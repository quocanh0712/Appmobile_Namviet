// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_member_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AllMemberResponse? jsonToNullableAllMemberResponse(Object? json) =>
    AllMemberResponse.fromJson(json as Map<String, dynamic>);

AllMemberResponse jsonToAllMemberResponse(Object? json) =>
    AllMemberResponse.fromJson(json as Map<String, dynamic>);

List<AllMemberResponse?> jsonToListNullableAllMemberResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllMemberResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AllMemberResponse> jsonToListAllMemberResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllMemberResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllMemberResponseImpl _$$AllMemberResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllMemberResponseImpl(
      id: json['id'] as int?,
      idRoom: json['idRoom'] as int?,
      iduser: json['iduser'] as String?,
    );

Map<String, dynamic> _$$AllMemberResponseImplToJson(
        _$AllMemberResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idRoom': instance.idRoom,
      'iduser': instance.iduser,
    };
