


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'restore_email_request.freezed.dart';
part 'restore_email_request.g.dart';


RestoreEmailRequest restoreEmailRequestFromJson(String str) =>
    RestoreEmailRequest.fromJson(json.decode(str));

String restoreEmailRequestToJson(RestoreEmailRequest data) => json.encode(data.toJson());
@freezed


class RestoreEmailRequest with _$RestoreEmailRequest {
  factory RestoreEmailRequest({
    int? id,
    String? idUser,
    String? loaiDelete,
  }) = _RestoreEmailRequest;

  factory RestoreEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$RestoreEmailRequestFromJson(json);
}