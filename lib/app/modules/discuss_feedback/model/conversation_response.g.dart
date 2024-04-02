// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationResponseImpl _$$ConversationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationResponseImpl(
      id: json['id'] as int?,
      conversationname: json['conversationname'] as String?,
      content: json['content'] as String?,
      typeId: json['typeId'] as int?,
      type: json['type'] as String?,
      iDCb: json['iDCb'] as String?,
      teacher: json['teacher'] as String?,
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$ConversationResponseImplToJson(
        _$ConversationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversationname': instance.conversationname,
      'content': instance.content,
      'typeId': instance.typeId,
      'type': instance.type,
      'iDCb': instance.iDCb,
      'teacher': instance.teacher,
      'updateAt': instance.updateAt?.toIso8601String(),
      'status': instance.status,
    };
