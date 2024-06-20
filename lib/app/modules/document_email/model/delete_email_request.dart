


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_email_request.freezed.dart';
part 'delete_email_request.g.dart';


DeleteEmailRequest deleteEmailRequestFromJson(String str) =>
    DeleteEmailRequest.fromJson(json.decode(str));

String deleteEmailRequestToJson(DeleteEmailRequest data) => json.encode(data.toJson());
@freezed


class DeleteEmailRequest with _$DeleteEmailRequest {
  factory DeleteEmailRequest({
    int? id,
    String? idUser,
    String? loaiDelete,
  }) = _DeleteEmailRequest;

  factory DeleteEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteEmailRequestFromJson(json);
}