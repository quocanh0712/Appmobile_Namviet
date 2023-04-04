// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final rewardResponse = rewardResponseFromJson(jsonString);

import 'dart:convert';

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_response.freezed.dart';
part 'reward_response.g.dart';

RewardResponse? rewardResponseFromJson(String str) => RewardResponse.fromJson(json.decode(str));

String rewardResponseToJson(RewardResponse? data) => json.encode(data!.toJson());

@freezed
@genJsonT4ThisOne
class RewardResponse with _$RewardResponse {
  const factory RewardResponse({
    int? id,
    String? achievement,
    String? content,
    String? icon,
    int? status,
  }) = _RewardResponse;

  factory RewardResponse.fromJson(Map<String, dynamic> json) => _$RewardResponseFromJson(json);
}
