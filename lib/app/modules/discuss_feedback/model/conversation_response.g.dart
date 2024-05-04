// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ConversationResponse? jsonToNullableConversationResponse(Object? json) =>
    ConversationResponse.fromJson(json as Map<String, dynamic>);

ConversationResponse jsonToConversationResponse(Object? json) =>
    ConversationResponse.fromJson(json as Map<String, dynamic>);

List<ConversationResponse?> jsonToListNullableConversationResponses(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ConversationResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ConversationResponse> jsonToListConversationResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ConversationResponse.fromJson(e as Map<String, dynamic>))
        .toList();


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
