// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final conversationRequest = conversationRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'conversation_request.freezed.dart';
part 'conversation_request.g.dart';

ConversationRequest conversationRequestFromJson(String str) =>
    ConversationRequest.fromJson(json.decode(str));

String conversationRequestToJson(ConversationRequest data) => json.encode(data.toJson());

@freezed
class ConversationRequest with _$ConversationRequest {
  const factory ConversationRequest({
    int? startindex,
    int? length,
    String? keyword,
  }) = _ConversationRequest;

  factory ConversationRequest.fromJson(Map<String, dynamic> json) =>
      _$ConversationRequestFromJson(json);
}
