

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_user_request.freezed.dart';
part 'all_user_request.g.dart';


AllUserRequest allUserRequestFromJson(String str) =>
    AllUserRequest.fromJson(json.decode(str));

String allUserRequestToJson(AllUserRequest data) => json.encode(data.toJson());
@freezed


class AllUserRequest with _$AllUserRequest {
  factory AllUserRequest({
    String? noiDung,
    int? startindex,
    int? length,

  }) = _AllUserRequest;

  factory AllUserRequest.fromJson(Map<String, dynamic> json) =>
      _$AllUserRequestFromJson(json);
}