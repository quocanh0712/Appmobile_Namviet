




import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_request.freezed.dart';
part 'home_request.g.dart';


HomeRequest homeRequestFromJson(String str) =>
    HomeRequest.fromJson(json.decode(str));

String homeRequestToJson(HomeRequest data) => json.encode(data.toJson());
@freezed


class HomeRequest with _$HomeRequest {
  factory HomeRequest({
    String? iduser,
    int? startindex,
    int? length,
    String? year,
    int? weeksOfYear,
  }) = _HomeRequest;

  factory HomeRequest.fromJson(Map<String, dynamic> json) =>
      _$HomeRequestFromJson(json);
}