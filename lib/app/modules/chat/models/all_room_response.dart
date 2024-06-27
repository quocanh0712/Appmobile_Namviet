


import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'all_room_response.freezed.dart';
part 'all_room_response.g.dart';

AllRoomResponse allRoomResponseFromJson(String str) =>
    AllRoomResponse.fromJson(json.decode(str));

String allRoomResponseToJson(AllRoomResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class AllRoomResponse with _$AllRoomResponse {
  factory AllRoomResponse({
    int? id,
    String? roomName,
    String? createdDate,
    String? createdBy

  }) = _AllRoomResponse;

  factory AllRoomResponse.fromJson(Map<String, dynamic> json) => _$AllRoomResponseFromJson(json);
}