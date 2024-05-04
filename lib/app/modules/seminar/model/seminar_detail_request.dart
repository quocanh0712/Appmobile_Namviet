
import 'package:freezed_annotation/freezed_annotation.dart';
part 'seminar_detail_request.freezed.dart';
part 'seminar_detail_request.g.dart';

@freezed


class SeminarDetailRequest with _$SeminarDetailRequest {
  factory SeminarDetailRequest({

    int? startindex,
    int? length,
  }) = _SeminarDetailRequest;

  factory SeminarDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$SeminarDetailRequestFromJson(json);
}




