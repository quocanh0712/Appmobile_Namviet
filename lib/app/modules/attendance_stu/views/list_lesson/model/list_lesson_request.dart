

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'list_lesson_request.freezed.dart';
part 'list_lesson_request.g.dart';


ListLessonRequest listLessonRequestFromJson(String str) =>
    ListLessonRequest.fromJson(json.decode(str));

String listLessonRequestToJson(ListLessonRequest data) => json.encode(data.toJson());
@freezed


class ListLessonRequest with _$ListLessonRequest {
  factory ListLessonRequest({
    @JsonKey(name: 'iD_lop_tc') int? idLopTc,
    @JsonKey(name: 'hoc_ky') int? hocKy,
    @JsonKey(name: 'nam_hoc') String? namHoc,
  }) = _ListLessonRequest;

  factory ListLessonRequest.fromJson(Map<String, dynamic> json) =>
      _$ListLessonRequestFromJson(json);
}