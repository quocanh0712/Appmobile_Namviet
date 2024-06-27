


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_member_request.freezed.dart';
part 'all_member_request.g.dart';


AllMemberRequest allMemberRequestFromJson(String str) =>
    AllMemberRequest.fromJson(json.decode(str));

String allMemberRequestToJson(AllMemberRequest data) => json.encode(data.toJson());
@freezed


class AllMemberRequest with _$AllMemberRequest {
  factory AllMemberRequest({
    String? iduser,
    int? startindex,
    int? length,
    int? idRoom,
  }) = _AllMemberRequest;

  factory AllMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$AllMemberRequestFromJson(json);
}