// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final commentRequest = commentRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_request.freezed.dart';
part 'comment_request.g.dart';

CommentRequest commentRequestFromJson(String str) => CommentRequest.fromJson(json.decode(str));

String commentRequestToJson(CommentRequest data) => json.encode(data.toJson());

@freezed
class CommentRequest with _$CommentRequest {
  const factory CommentRequest({
    int? startindex,
    int? length,
    String? keyword,
    int? id,
  }) = _CommentRequest;

  factory CommentRequest.fromJson(Map<String, dynamic> json) => _$CommentRequestFromJson(json);
}
