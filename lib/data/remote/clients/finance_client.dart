// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/remote/requests/finance_request_params/finance_request_params.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'finance_client.freezed.dart';

@freezed
class FinanceClient extends BaseClientGenerator with _$FinanceClient {
  FinanceClient._() : super();
  factory FinanceClient.getAll(FinanceRequestParams? params) = _GetAll;
  factory FinanceClient.getAllBills(FinanceRequestParams? params) = _GetAllBills;

  @override
  String get baseURL => '${super.baseURL}/TaiChinh';

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getAll: (params) => '/GetAll',
      getAllBills: (params) => '/GetAllHoaDon',
      orElse: () => 'get',
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      getAll: (params) => params?.toJson() ?? {},
      getAllBills: (params) => params?.toJson() ?? {},
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
