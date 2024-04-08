// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_conversation.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

CommentConversation? jsonToNullableCommentConversation(Object? json) =>
    CommentConversation.fromJson(json as Map<String, dynamic>);

CommentConversation jsonToCommentConversation(Object? json) =>
    CommentConversation.fromJson(json as Map<String, dynamic>);

List<CommentConversation?> jsonToListNullableCommentConversations(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => CommentConversation.fromJson(e as Map<String, dynamic>))
        .toList();

List<CommentConversation> jsonToListCommentConversations(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => CommentConversation.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentConversationImpl _$$CommentConversationImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentConversationImpl(
      id: json['id'] as int?,
      content: json['content'] as String?,
      teacher: json['teacher'] as String?,
      iDCb: json['iDCb'] as String?,
      employeePosition: json['employeePosition'] as String?,
      image: json['image'] as String?,
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
    );

Map<String, dynamic> _$$CommentConversationImplToJson(
        _$CommentConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'teacher': instance.teacher,
      'iDCb': instance.iDCb,
      'employeePosition': instance.employeePosition,
      'image': instance.image,
      'updateAt': instance.updateAt?.toIso8601String(),
    };
