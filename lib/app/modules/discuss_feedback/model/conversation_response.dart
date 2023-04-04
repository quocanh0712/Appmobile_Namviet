// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final conversationResponse = conversationResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_response.freezed.dart';
part 'conversation_response.g.dart';

ConversationResponse conversationResponseFromJson(String str) =>
    ConversationResponse.fromJson(json.decode(str));

String conversationResponseToJson(ConversationResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class ConversationResponse with _$ConversationResponse {
  const factory ConversationResponse({
    int? id,
    String? conversationname,
    String? content,
    int? typeId,
    String? type,
    String? iDCb,
    String? teacher,
    DateTime? updateAt,
    int? status,
  }) = _ConversationResponse;

  factory ConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationResponseFromJson(json);
}
