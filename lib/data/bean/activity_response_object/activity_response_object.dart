// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_response_object.freezed.dart';
part 'activity_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class ActivityResponseObject with _$ActivityResponseObject {
  factory ActivityResponseObject({
    String? fullName,
    @Default(null) onUserTap,
    @Default(null) onArticleTap,
    String? dateCreated,
    String? position,
    String? title,
    String? content,
    String? image,
  }) = _ActivityResponseObject;

  factory ActivityResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ActivityResponseObjectFromJson(json);
}
