
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'seminar_detail_request.freezed.dart';
part 'seminar_detail_request.g.dart';


SeminarDetailRequest seminarDetailRequestFromJson(String str) =>
    SeminarDetailRequest.fromJson(json.decode(str));

String seminarDetailRequestToJson(SeminarDetailRequest data) => json.encode(data.toJson());
@freezed


class SeminarDetailRequest with _$SeminarDetailRequest {
  factory SeminarDetailRequest({
    int? startindex,
    int? length,
  }) = _SeminarDetailRequest;

  factory SeminarDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$SeminarDetailRequestFromJson(json);
}




