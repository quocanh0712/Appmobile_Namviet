








import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_email_request.freezed.dart';
part 'all_email_request.g.dart';


AllEmailRequest allEmailRequestFromJson(String str) =>
    AllEmailRequest.fromJson(json.decode(str));

String allEmailRequestToJson(AllEmailRequest data) => json.encode(data.toJson());
@freezed


class AllEmailRequest with _$AllEmailRequest {
  factory AllEmailRequest({
    String? iduser,
    int? startindex,
    int? length,
    int? loai,
    int? phanLoai,
  }) = _AllEmailRequest;

  factory AllEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$AllEmailRequestFromJson(json);
}