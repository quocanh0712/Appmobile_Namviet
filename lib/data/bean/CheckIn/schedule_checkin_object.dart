import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/local/storage_keys.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'schedule_checkin_object.freezed.dart';
part 'schedule_checkin_object.g.dart';

@freezed
@HiveType(typeId: StorageKeys.userHiveTypeId)
@genJsonT4ThisOne
class ScheDuleCheckInObject with _$ScheDuleCheckInObject {
  factory ScheDuleCheckInObject({
    @HiveField(0) int? id_khkk,
    @HiveField(1) String? ma_khkk,
    @HiveField(2) String? ten_khkk,
  }) = _ScheDuleCheckInObject;

  factory ScheDuleCheckInObject.fromJson(Map<String, dynamic> json) =>
      _$ScheDuleCheckInObjectFromJson(json);
}
