


import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'all_member_response.freezed.dart';
part 'all_member_response.g.dart';

AllMemberResponse allMemberResponseFromJson(String str) =>
    AllMemberResponse.fromJson(json.decode(str));

String allMemberResponseToJson(AllMemberResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class AllMemberResponse with _$AllMemberResponse {
  factory AllMemberResponse({
    int? id,
    int? idRoom,
    String? iduser,

  }) = _AllMemberResponse;

  factory AllMemberResponse.fromJson(Map<String, dynamic> json) => _$AllMemberResponseFromJson(json);
}