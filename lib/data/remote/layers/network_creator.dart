// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/app_configurations.dart';
import 'package:ftu_lms/data/remote/wrappers/network_options.dart';
import 'package:ftu_lms/data/repositories/app_configs_repository.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../interfaces/base_client_generator.dart';

class NetworkCreator {
  static var shared = NetworkCreator();
  final Dio _client = Get.find();
  AppConfigurations? _appConfigs;
  final _appConfigsRepo = Get.find<AppConfigsRepository>();

  Future<Response> request(
      {required BaseClientGenerator route,
      NetworkOptions? options,
      bool? tokenRefreshing = false}) async {
    /// Load configurations
    _appConfigs = await _appConfigsRepo.retrieveAppConfigurations();

    /// Add interceptor to refresh token: START !!!.
    _client.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) => requestInterceptor(options: options, handler: handler),
        onError: (error, handler) => refreshTokenInterceptor(
            error: error, handler: handler, route: route, options: options),
        onResponse: (response, handle) =>
            responseInterceptor(response: response, handle: handle)));

    /// Add interceptor to refresh token: END !!!.

    Fimber.d("route: $route");
    final body = route.body;
    body.removeWhere((key, value) => value == null);
    final data = await route.defaultBody()
      ..addAll(body);

    return _client.fetch(RequestOptions(
        baseUrl: route.baseURL,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        data: data,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.sendTimeout,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) =>
            (statusCode! >= HttpStatus.ok && statusCode <= HttpStatus.multipleChoices)));
  }

  dynamic responseInterceptor({
    required Response response,
    required ResponseInterceptorHandler handle,
  }) async {
    // Fimber.d("response: ${response.toString()}");
    handle.next(response);
  }

  dynamic requestInterceptor(
      {required RequestOptions options, required RequestInterceptorHandler handler}) async {
    if (_appConfigs?.accessToken != null) {
      options.headers.addAll({"Authorization": "Bearer ${_appConfigs?.accessToken}"});
    }
    handler.next(options);
  }

  dynamic refreshTokenInterceptor(
      {required DioError error,
      required ErrorInterceptorHandler handler,
      required BaseClientGenerator route,
      NetworkOptions? options}) async {
    if (error.response?.statusCode == HttpStatus.forbidden ||
        error.response?.statusCode == HttpStatus.unauthorized) {
      // Navigate to the Login screen directly.
      Get.toNamed(Routes.LOGIN);
      final response = await request(route: route, options: options, tokenRefreshing: true);
      handler.resolve(response);
      return;
    }
    handler.next(error);
  }
}
