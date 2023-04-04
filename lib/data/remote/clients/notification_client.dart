// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'notification_client.freezed.dart';

@freezed
class NotificationClient extends BaseClientGenerator with _$NotificationClient {
  NotificationClient._() : super();

  factory NotificationClient.loadNotifications(int? startindex, int? length) = _LoadNotifications;
  factory NotificationClient.read(int? pushID) = _ReadNotifications;
  factory NotificationClient.readAll() = _ReadAll;

  @override
  String get baseURL => '${super.baseURL}/ThongBao';

  @override
  String get method {
    return maybeWhen<String>(
      loadNotifications: (startindex, length) => RequestMethods.post.name,
      read: (pushID) => RequestMethods.post.name,
      orElse: () => RequestMethods.get.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      loadNotifications: (startindex, length) => '/GetAll',
      read: (pushID) => '/DanhDauDaDoc',
      readAll: () => '/ReadAll',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      loadNotifications: (startindex, length) => {'startindex': startindex, 'length': length},
      read: (pushID) => {'pushId': pushID},
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
