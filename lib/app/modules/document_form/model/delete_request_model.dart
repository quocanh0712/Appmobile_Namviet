// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final deleteRequestModel = deleteRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'delete_request_model.freezed.dart';
part 'delete_request_model.g.dart';

DeleteRequestModel deleteRequestModelFromJson(String str) =>
    DeleteRequestModel.fromJson(json.decode(str));

String deleteRequestModelToJson(DeleteRequestModel data) => json.encode(data.toJson());

@freezed
abstract class DeleteRequestModel with _$DeleteRequestModel {
  const factory DeleteRequestModel({
    String? requestId,
  }) = _DeleteRequestModel;

  factory DeleteRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteRequestModelFromJson(json);
}
