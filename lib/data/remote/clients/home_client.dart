// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'home_client.freezed.dart';

@freezed
class HomeClient extends BaseClientGenerator with _$HomeClient {
  HomeClient._() : super();
  factory HomeClient.getAll() = _GetAll;

  @override
  String get baseURL => '${super.baseURL}/HomePage';

  @override
  String get method {
    return maybeWhen<String>(
      getAll: () => RequestMethods.post.name,
      orElse: () => RequestMethods.get.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getAll: () => '/GetAll',
      orElse: () => 'get',
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
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
