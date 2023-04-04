// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final commentInsertRequest = commentInsertRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_insert_request.freezed.dart';
part 'comment_insert_request.g.dart';

CommentInsertRequest commentInsertRequestFromJson(String str) =>
    CommentInsertRequest.fromJson(json.decode(str));

String commentInsertRequestToJson(CommentInsertRequest data) => json.encode(data.toJson());

@freezed
abstract class CommentInsertRequest with _$CommentInsertRequest {
  const factory CommentInsertRequest({
    int? id,
    String? content,
  }) = _CommentInsertRequest;

  factory CommentInsertRequest.fromJson(Map<String, dynamic> json) =>
      _$CommentInsertRequestFromJson(json);
}
