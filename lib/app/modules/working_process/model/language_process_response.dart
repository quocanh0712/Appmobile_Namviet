// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final languageProcessResponse = languageProcessResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_process_response.freezed.dart';
part 'language_process_response.g.dart';

LanguageProcessResponse languageProcessResponseFromJson(String str) =>
    LanguageProcessResponse.fromJson(json.decode(str));

String languageProcessResponseToJson(LanguageProcessResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class LanguageProcessResponse with _$LanguageProcessResponse {
  const factory LanguageProcessResponse({
    int? id,
    String? foreignlanguage,
    String? level,
  }) = _LanguageProcessResponse;

  factory LanguageProcessResponse.fromJson(Map<String, dynamic> json) =>
      _$LanguageProcessResponseFromJson(json);
}
