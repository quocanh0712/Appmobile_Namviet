// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_response_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ChatUserResponseObject? jsonToNullableChatUserResponseObject(Object? json) =>
    ChatUserResponseObject.fromJson(json as Map<String, dynamic>);

ChatUserResponseObject jsonToChatUserResponseObject(Object? json) =>
    ChatUserResponseObject.fromJson(json as Map<String, dynamic>);

List<ChatUserResponseObject?> jsonToListNullableChatUserResponseObjects(
        Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ChatUserResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<ChatUserResponseObject> jsonToListChatUserResponseObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ChatUserResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatUserResponseObject _$$_ChatUserResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ChatUserResponseObject(
      name: json['name'] as String?,
      idUser: json['idUser'] as String?,
      className: json['className'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_ChatUserResponseObjectToJson(
        _$_ChatUserResponseObject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'idUser': instance.idUser,
      'className': instance.className,
      'image': instance.image,
    };
