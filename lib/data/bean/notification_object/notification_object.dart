// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/utils/json_converter/jiffy_json_converter.dart';
import 'package:jiffy/jiffy.dart';

part 'notification_object.freezed.dart';
part 'notification_object.g.dart';

@freezed
@genJsonT4ThisOne
class NotificationObject with _$NotificationObject {
  factory NotificationObject(
      {bool? isLabel,
      int? pushId,
      String? title,
      String? icon,
      String? body,
      String? url,
      String? imageUrl,
      @JiffyJsonConverter() Jiffy? createdAt,
      String? type,
      int? status,
      bool? isLast}) = _NotificationObject;

  factory NotificationObject.fromJson(Map<String, dynamic> json) =>
      _$NotificationObjectFromJson(json);
}
