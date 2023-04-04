// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/utils/json_converter/color_json_converter.dart';

part 'photo_object.freezed.dart';
part 'photo_object.g.dart';

@freezed
@genJsonT4ThisOne
class PhotoObject with _$PhotoObject {
  factory PhotoObject({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
    @ColorJsonConverter() Color? color,
  }) = _PhotoObject;

  factory PhotoObject.fromJson(Map<String, dynamic> json) => _$PhotoObjectFromJson(json);
}
