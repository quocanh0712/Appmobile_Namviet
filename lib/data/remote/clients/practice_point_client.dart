// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/remote/requests/practice_point_request_params/practice_point_request_params.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'practice_point_client.freezed.dart';

@freezed
class PracticePointsClient extends BaseClientGenerator with _$PracticePointsClient {
  PracticePointsClient._() : super();
  factory PracticePointsClient.getAll(PracticePointRequestParams? params) = _GetAll;
  factory PracticePointsClient.getChiTiet(PracticePointRequestParams? params) = _GetChiTiet;

  @override
  String get baseURL => '${super.baseURL}/DiemRenLuyen';

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
      getChiTiet: (params) => '/GetChiTiet',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      getAll: (params) => params?.toJson() ?? {},
      getChiTiet: (params) => params?.toJson() ?? {},
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
