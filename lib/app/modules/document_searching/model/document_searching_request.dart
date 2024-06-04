




import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'document_searching_request.freezed.dart';
part 'document_searching_request.g.dart';


DocumentSearchingRequest documentSearchingRequestFromJson(String str) =>
    DocumentSearchingRequest.fromJson(json.decode(str));

String documentSearchingRequestToJson(DocumentSearchingRequest data) => json.encode(data.toJson());
@freezed


class DocumentSearchingRequest with _$DocumentSearchingRequest {
  factory DocumentSearchingRequest({
    String? iduser,
    int? startindex,
    int? length,
    @JsonKey(name: 'loai_diden') String? loaiDiDen,
  }) = _DocumentSearchingRequest;

  factory DocumentSearchingRequest.fromJson(Map<String, dynamic> json) =>
      _$DocumentSearchingRequestFromJson(json);
}