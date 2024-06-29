// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_message_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

AllMessageResponse? jsonToNullableAllMessageResponse(Object? json) =>
    AllMessageResponse.fromJson(json as Map<String, dynamic>);

AllMessageResponse jsonToAllMessageResponse(Object? json) =>
    AllMessageResponse.fromJson(json as Map<String, dynamic>);

List<AllMessageResponse?> jsonToListNullableAllMessageResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllMessageResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<AllMessageResponse> jsonToListAllMessageResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => AllMessageResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllMessageResponseImpl _$$AllMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AllMessageResponseImpl(
      id: json['id'] as int?,
      iduser: json['iduser'] as String?,
      message: json['message'] as String?,
      idRoom: json['idRoom'] as int?,
      createdDate: json['createdDate'] as String?,
      isSeen: json['isSeen'] as bool?,
      isMine: json['isMine'] as bool?,
    );

Map<String, dynamic> _$$AllMessageResponseImplToJson(
        _$AllMessageResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iduser': instance.iduser,
      'message': instance.message,
      'idRoom': instance.idRoom,
      'createdDate': instance.createdDate,
      'isSeen': instance.isSeen,
      'isMine': instance.isMine,
    };
