// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_user_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AllUserResponse? jsonToNullableAllUserResponse(Object? json) =>
    AllUserResponse.fromJson(json as Map<String, dynamic>);

AllUserResponse jsonToAllUserResponse(Object? json) =>
    AllUserResponse.fromJson(json as Map<String, dynamic>);

List<AllUserResponse?> jsonToListNullableAllUserResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllUserResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AllUserResponse> jsonToListAllUserResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllUserResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllUserResponseImpl _$$AllUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllUserResponseImpl(
      id: json['id'] as int?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$AllUserResponseImplToJson(
        _$AllUserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
    };
