// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardResponseImpl _$$RewardResponseImplFromJson(Map<String, dynamic> json) =>
    _$RewardResponseImpl(
      id: json['id'] as int?,
      achievement: json['achievement'] as String?,
      content: json['content'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$RewardResponseImplToJson(
        _$RewardResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'achievement': instance.achievement,
      'content': instance.content,
      'icon': instance.icon,
      'status': instance.status,
    };
