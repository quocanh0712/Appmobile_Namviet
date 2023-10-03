import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/local/storage_keys.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'checkin_object.freezed.dart';
part 'checkin_object.g.dart';

@freezed
@HiveType(typeId: StorageKeys.userHiveTypeId)
@genJsonT4ThisOne
class CheckInObject with _$CheckInObject {
  factory CheckInObject({
    @HiveField(0) String? ma_ts,
    @HiveField(1) String? ten_ts,
    @HiveField(2) String? nam_sx,
    @HiveField(3) String? hang_sx,
    @HiveField(4) String? nuoc_ts,
    @HiveField(5) String? thong_so_kt,
    @HiveField(6) String? ten_bp,
    @HiveField(7) String? ten_lts,
    @HiveField(8) String? so_ct,
    @HiveField(9) String? str_ngay_ct,
    @HiveField(10) int? so_luong,
    @HiveField(11) String? ghi_chu,
    @HiveField(12) String? str_ngay_bdsd,
  }) = _CheckInObject;

  factory CheckInObject.fromJson(Map<String, dynamic> json) =>
      _$CheckInObjectFromJson(json);
}
