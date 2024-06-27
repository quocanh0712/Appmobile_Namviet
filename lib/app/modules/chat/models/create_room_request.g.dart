// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_room_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRoomRequestImpl _$$CreateRoomRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRoomRequestImpl(
      roomName: json['roomName'] as String?,
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$$CreateRoomRequestImplToJson(
        _$CreateRoomRequestImpl instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'createdBy': instance.createdBy,
    };
