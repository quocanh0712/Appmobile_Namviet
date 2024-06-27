

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_room_request.freezed.dart';
part 'all_room_request.g.dart';


AllRoomRequest allRoomRequestFromJson(String str) =>
    AllRoomRequest.fromJson(json.decode(str));

String allRoomRequestToJson(AllRoomRequest data) => json.encode(data.toJson());
@freezed


class AllRoomRequest with _$AllRoomRequest {
  factory AllRoomRequest({
    String? iduser,
    int? startindex,
    int? length,
  }) = _AllRoomRequest;

  factory AllRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$AllRoomRequestFromJson(json);
}