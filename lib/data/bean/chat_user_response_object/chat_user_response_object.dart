// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_response_object.freezed.dart';
part 'chat_user_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class ChatUserResponseObject with _$ChatUserResponseObject {
  factory ChatUserResponseObject({
    String? name,
    String? idUser,
    String? className,
    String? image,
  }) = _ChatUserResponseObject;

  factory ChatUserResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ChatUserResponseObjectFromJson(json);
}
