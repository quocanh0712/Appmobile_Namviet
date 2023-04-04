// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

NotificationObject? jsonToNullableNotificationObject(Object? json) =>
    NotificationObject.fromJson(json as Map<String, dynamic>);

NotificationObject jsonToNotificationObject(Object? json) =>
    NotificationObject.fromJson(json as Map<String, dynamic>);

List<NotificationObject?> jsonToListNullableNotificationObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => NotificationObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<NotificationObject> jsonToListNotificationObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => NotificationObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationObject _$$_NotificationObjectFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationObject(
      isLabel: json['isLabel'] as bool?,
      pushId: json['pushId'] as int?,
      title: json['title'] as String?,
      icon: json['icon'] as String?,
      body: json['body'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt:
          const JiffyJsonConverter().fromJson(json['createdAt'] as String?),
      type: json['type'] as String?,
      status: json['status'] as int?,
      isLast: json['isLast'] as bool?,
    );

Map<String, dynamic> _$$_NotificationObjectToJson(
        _$_NotificationObject instance) =>
    <String, dynamic>{
      'isLabel': instance.isLabel,
      'pushId': instance.pushId,
      'title': instance.title,
      'icon': instance.icon,
      'body': instance.body,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'createdAt': const JiffyJsonConverter().toJson(instance.createdAt),
      'type': instance.type,
      'status': instance.status,
      'isLast': instance.isLast,
    };
