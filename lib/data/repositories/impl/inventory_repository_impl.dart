// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/CheckIn/checkin_object.dart';
import 'package:ftu_lms/data/remote/clients/assets_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/inventory_repository.dart';

class InventoryRepositoryImpl extends InventoryRepository {
  @override
  Future<Result<BaseResponseObject<String?>, NetworkError>> checkin(
      String? barcode) {
    return NetworkExecutor.execute<BaseResponseObject<String?>,
            BaseResponseObject<String?>>(
        route: AssetsClient.checkin(barcode),
        responseType: const BaseResponseObject<String?>());
  }

  @override
  Future<Result<BaseResponseObject<CheckInObject?>, NetworkError>> scaninfo(
      String? barcode) {
    return NetworkExecutor.execute<BaseResponseObject<CheckInObject?>,
            BaseResponseObject<CheckInObject?>>(
        route: AssetsClient.scaninfo(barcode),
        responseType: const BaseResponseObject<CheckInObject?>());
  }
}
