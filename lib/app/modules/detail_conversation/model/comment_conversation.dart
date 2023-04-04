// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final commentConversation = commentConversationFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_conversation.freezed.dart';
part 'comment_conversation.g.dart';

CommentConversation commentConversationFromJson(String str) =>
    CommentConversation.fromJson(json.decode(str));

String commentConversationToJson(CommentConversation data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class CommentConversation with _$CommentConversation {
  const factory CommentConversation({
    int? id,
    String? content,
    String? teacher,
    String? iDCb,
    String? employeePosition,
    String? image,
    DateTime? updateAt,
  }) = _CommentConversation;

  factory CommentConversation.fromJson(Map<String, dynamic> json) =>
      _$CommentConversationFromJson(json);
}
