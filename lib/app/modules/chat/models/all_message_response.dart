




import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'all_message_response.freezed.dart';
part 'all_message_response.g.dart';

AllMessageResponse allMessageResponseFromJson(String str) =>
    AllMessageResponse.fromJson(json.decode(str));

String allMessageResponseToJson(AllMessageResponse data) => json.encode(data.toJson());

@freezed
@genJsonT4ThisOne
class AllMessageResponse with _$AllMessageResponse {
  factory AllMessageResponse({
    int? id,
    String? iduser,
    String? message,
    int? idRoom,
    DateTime? createdDate,
    String? seen,
    bool? isSeen,
    bool? isMine,
  }) = _AllMessageResponse;

  factory AllMessageResponse.fromJson(Map<String, dynamic> json) => _$AllMessageResponseFromJson(json);
}