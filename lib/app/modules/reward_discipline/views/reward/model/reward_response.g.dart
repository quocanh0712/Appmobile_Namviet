// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

RewardResponse? jsonToNullableRewardResponse(Object? json) =>
    RewardResponse.fromJson(json as Map<String, dynamic>);

RewardResponse jsonToRewardResponse(Object? json) =>
    RewardResponse.fromJson(json as Map<String, dynamic>);

List<RewardResponse?> jsonToListNullableRewardResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => RewardResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<RewardResponse> jsonToListRewardResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => RewardResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardResponse _$$_RewardResponseFromJson(Map<String, dynamic> json) =>
    _$_RewardResponse(
      id: json['id'] as int?,
      achievement: json['achievement'] as String?,
      content: json['content'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_RewardResponseToJson(_$_RewardResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'achievement': instance.achievement,
      'content': instance.content,
      'icon': instance.icon,
      'status': instance.status,
    };
