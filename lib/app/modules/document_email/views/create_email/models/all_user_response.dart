



import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/annotations/lib/annotations.dart';

part 'all_user_response.freezed.dart';
part 'all_user_response.g.dart';


AllUserResponse allUserResponseFromJson(String str) =>
    AllUserResponse.fromJson(json.decode(str));

String allUserResponseToJson(AllUserResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class AllUserResponse with _$AllUserResponse {
  factory AllUserResponse({
    int? id,
    String? username,
    String? fullName,
  }) = _AllUserResponse;

  factory AllUserResponse.fromJson(Map<String, dynamic> json) => _$AllUserResponseFromJson(json);
}