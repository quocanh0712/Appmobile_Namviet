// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/notification_object/notification_object.dart';
import 'package:ftu_lms/data/remote/clients/notification_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/notification_repository.dart';
import 'package:ftu_lms/utils/constants.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  @override
  Future<Result<BaseResponseObject<List<NotificationObject?>?>, NetworkError>> loadNotifications(
      int? pageNumber) async {
    return NetworkExecutor.execute<BaseResponseObject<List<NotificationObject?>?>,
            BaseResponseObject<List<NotificationObject?>?>>(
        route: NotificationClient.loadNotifications(
            (pageNumber ?? 1), InfiniteList.ITEMS_PER_PAGE),
        responseType: const BaseResponseObject<List<NotificationObject?>?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> readNotifications(int? pushID) async {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: NotificationClient.read(pushID), responseType: const BaseResponseObject<int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> readAll() {
    return NetworkExecutor.execute<BaseResponseObject<int?>, BaseResponseObject<int?>>(
        route: NotificationClient.readAll(), responseType: const BaseResponseObject<int?>());
  }
}
