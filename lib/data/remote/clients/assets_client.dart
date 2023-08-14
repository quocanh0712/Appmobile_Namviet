// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'assets_client.freezed.dart';

@freezed
class AssetsClient extends BaseClientGenerator with _$AssetsClient {
  AssetsClient._() : super();
  factory AssetsClient.checkin(String? barcode, String? schedulecode) =
      _Inventory;
  factory AssetsClient.scaninfo(String? barcode) = _InventoryInfo;
  factory AssetsClient.schedulecheckin() = _InventorySchedule;

  @override
  String get baseURL => '${super.baseURL}/QuanLyTaiSan';

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      checkin: (barcode, schedulecode) => '/KiemKeTaiSan',
      scaninfo: (barcode) => '/ThongTinTaiSan',
      schedulecheckin: () => '/KeHoachKiemKe',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      checkin: (barcode, schedulecode) =>
          {"barcode": barcode, "scheduleCode": schedulecode},
      scaninfo: (barcode) => {"barcode": barcode},
      schedulecheckin: () => {},
      orElse: () => {},
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () => null,
    );
  }
}
