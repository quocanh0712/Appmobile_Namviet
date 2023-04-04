// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final keyValueResponse = keyValueResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value_response.freezed.dart';
part 'key_value_response.g.dart';

KeyValueResponse keyValueResponseFromJson(String str) =>
    KeyValueResponse.fromJson(json.decode(str));

String keyValueResponseToJson(KeyValueResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class KeyValueResponse with _$KeyValueResponse {
  const factory KeyValueResponse({
    int? key,
    String? value,
  }) = _KeyValueResponse;

  factory KeyValueResponse.fromJson(Map<String, dynamic> json) => _$KeyValueResponseFromJson(json);
}
