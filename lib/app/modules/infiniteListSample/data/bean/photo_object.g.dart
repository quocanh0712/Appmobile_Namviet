// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoObjectImpl _$$PhotoObjectImplFromJson(Map<String, dynamic> json) =>
    _$PhotoObjectImpl(
      albumId: json['albumId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      color: const ColorJsonConverter().fromJson(json['color'] as String?),
    );

Map<String, dynamic> _$$PhotoObjectImplToJson(_$PhotoObjectImpl instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
      'color': const ColorJsonConverter().toJson(instance.color),
    };
