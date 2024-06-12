// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_response_object.dart';


// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ActivityResponseObject? jsonToNullableActivityResponseObject(Object? json) =>
    ActivityResponseObject.fromJson(json as Map<String, dynamic>);

ActivityResponseObject jsonToActivityResponseObject(Object? json) =>
    ActivityResponseObject.fromJson(json as Map<String, dynamic>);

List<ActivityResponseObject?> jsonToListNullableActivityResponseObjects(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ActivityResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<ActivityResponseObject> jsonToListActivityResponseObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ActivityResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityResponseObjectImpl _$$ActivityResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityResponseObjectImpl(
      fullName: json['fullName'] as String?,
      onUserTap: json['onUserTap'] ?? null,
      onArticleTap: json['onArticleTap'] ?? null,
      dateCreated: json['dateCreated'] as String?,
      position: json['position'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ActivityResponseObjectImplToJson(
        _$ActivityResponseObjectImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'onUserTap': instance.onUserTap,
      'onArticleTap': instance.onArticleTap,
      'dateCreated': instance.dateCreated,
      'position': instance.position,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
    };
