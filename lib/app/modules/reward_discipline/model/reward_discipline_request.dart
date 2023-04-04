// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final rewardDisciplineRequest = rewardDisciplineRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reward_discipline_request.freezed.dart';
part 'reward_discipline_request.g.dart';

RewardDisciplineRequest? rewardDisciplineRequestFromJson(String str) =>
    RewardDisciplineRequest.fromJson(json.decode(str));

String rewardDisciplineRequestToJson(RewardDisciplineRequest? data) => json.encode(data!.toJson());

@freezed
class RewardDisciplineRequest with _$RewardDisciplineRequest {
  const factory RewardDisciplineRequest({
    int? startindex,
    int? length,
  }) = _RewardDisciplineRequest;

  factory RewardDisciplineRequest.fromJson(Map<String, dynamic> json) =>
      _$RewardDisciplineRequestFromJson(json);
}
