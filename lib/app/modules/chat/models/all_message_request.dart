




import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_message_request.freezed.dart';
part 'all_message_request.g.dart';


AllMessageRequest allMessageRequestFromJson(String str) =>
    AllMessageRequest.fromJson(json.decode(str));

String allMessageRequestToJson(AllMessageRequest data) => json.encode(data.toJson());



@freezed
class AllMessageRequest with _$AllMessageRequest {
  factory AllMessageRequest({
    String? iduser,
    int? startindex,
    int? length,
    int? idRoom,
  }) = _AllMessageRequest;

  factory AllMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$AllMessageRequestFromJson(json);
}