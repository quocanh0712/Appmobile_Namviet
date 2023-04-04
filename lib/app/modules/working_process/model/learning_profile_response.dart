// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final learningProfileResponse = learningProfileResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_profile_response.freezed.dart';
part 'learning_profile_response.g.dart';

LearningProfileResponse learningProfileResponseFromJson(String str) =>
    LearningProfileResponse.fromJson(json.decode(str));

String learningProfileResponseToJson(LearningProfileResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class LearningProfileResponse with _$LearningProfileResponse {
  const factory LearningProfileResponse({
    int? id,
    String? name,
    int? academicrankid,
    int? year,
    int? degreeid,
    int? researchid,
    int? positionid,
    String? dateofbirth,
    String? placeofbirth,
    String? phonenumber,
    String? email,
    String? agencyname,
  }) = _LearningProfileResponse;

  factory LearningProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$LearningProfileResponseFromJson(json);
}
