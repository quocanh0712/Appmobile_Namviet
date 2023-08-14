// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/CheckIn/checkin_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import '../bean/CheckIn/schedule_checkin_object.dart';

abstract class InventoryRepository {
  Future<Result<BaseResponseObject<String?>, NetworkError>> checkin(
      String? barcode, String? ScheduleCode);
  Future<Result<BaseResponseObject<CheckInObject?>, NetworkError>> scaninfo(
      String? barcode);
  Future<Result<BaseResponseObject<List<ScheDuleCheckInObject>?>, NetworkError>>
      schedulecheckin();
}
