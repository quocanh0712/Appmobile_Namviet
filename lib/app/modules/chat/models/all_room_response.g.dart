// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_room_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AllRoomResponse? jsonToNullableAllRoomResponse(Object? json) =>
    AllRoomResponse.fromJson(json as Map<String, dynamic>);

AllRoomResponse jsonToAllRoomResponse(Object? json) =>
    AllRoomResponse.fromJson(json as Map<String, dynamic>);

List<AllRoomResponse?> jsonToListNullableAllRoomResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllRoomResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AllRoomResponse> jsonToListAllRoomResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllRoomResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllRoomResponseImpl _$$AllRoomResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllRoomResponseImpl(
      id: json['id'] as int?,
      roomName: json['roomName'] as String?,
      createdDate: json['createdDate'] as String?,
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$$AllRoomResponseImplToJson(
        _$AllRoomResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomName': instance.roomName,
      'createdDate': instance.createdDate,
      'createdBy': instance.createdBy,
    };
