





import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_message_request.freezed.dart';
part 'send_message_request.g.dart';


SendMessageRequest sendMessageRequestFromJson(String str) =>
    SendMessageRequest.fromJson(json.decode(str));

String sendMessageRequestToJson(SendMessageRequest data) => json.encode(data.toJson());
@freezed


class SendMessageRequest with _$SendMessageRequest {
  factory SendMessageRequest({
    String? iduser,
    String? message,
    int? idRoom,
  }) = _SendMessageRequest;

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestFromJson(json);
}