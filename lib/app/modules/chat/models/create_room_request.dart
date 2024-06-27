


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_room_request.freezed.dart';
part 'create_room_request.g.dart';


CreateRoomRequest createRoomRequestFromJson(String str) =>
    CreateRoomRequest.fromJson(json.decode(str));

String createRoomRequestToJson(CreateRoomRequest data) => json.encode(data.toJson());
@freezed


class CreateRoomRequest with _$CreateRoomRequest {
  factory CreateRoomRequest({
    String? roomName,
    String? createdBy,
  }) = _CreateRoomRequest;

  factory CreateRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRoomRequestFromJson(json);
}