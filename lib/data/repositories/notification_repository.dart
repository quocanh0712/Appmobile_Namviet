// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/notification_object/notification_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class NotificationRepository {
  Future<Result<BaseResponseObject<List<NotificationObject?>?>, NetworkError>> loadNotifications(
      int? pageNumber);
  Future<Result<BaseResponseObject<int?>, NetworkError>> readNotifications(int? pushID);
  Future<Result<BaseResponseObject<int?>, NetworkError>> readAll();
}
