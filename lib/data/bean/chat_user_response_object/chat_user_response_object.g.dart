// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatUserResponseObjectImpl _$$ChatUserResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatUserResponseObjectImpl(
      name: json['name'] as String?,
      idUser: json['idUser'] as String?,
      className: json['className'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ChatUserResponseObjectImplToJson(
        _$ChatUserResponseObjectImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'idUser': instance.idUser,
      'className': instance.className,
      'image': instance.image,
    };
