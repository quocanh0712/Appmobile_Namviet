// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final disciplineResponse = disciplineResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discipline_response.freezed.dart';
part 'discipline_response.g.dart';

DisciplineResponse? disciplineResponseFromJson(String str) =>
    DisciplineResponse.fromJson(json.decode(str));

String disciplineResponseToJson(DisciplineResponse? data) => json.encode(data!.toJson());

@freezed
@genJsonT4ThisOne
class DisciplineResponse with _$DisciplineResponse {
  const factory DisciplineResponse({
    int? id,
    String? discipline,
    String? content,
    String? icon,
    int? status,
  }) = _DisciplineResponse;

  factory DisciplineResponse.fromJson(Map<String, dynamic> json) =>
      _$DisciplineResponseFromJson(json);
}
