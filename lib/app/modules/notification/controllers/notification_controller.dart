// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// ignore_for_file: depend_on_referenced_packages

import 'package:collection/collection.dart';
import 'package:fimber/fimber.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/bean/notification_object/notification_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/notification_repository.dart';
import 'package:get/get.dart';

class NotificationController extends BaseInfiniteListController<NotificationObject> {
  final NotificationRepository notiRepo = Get.find();

  String? lastDayInTheListNotification;

  @override
  Future<Result<BaseResponseObject<List<NotificationObject?>?>, Exception>>
      retrieveDataFromService(int? pageNumber) => notiRepo.loadNotifications(pageNumber);

  @override
  List<NotificationObject?>? prepareDataBeforeAdding(
      {List<NotificationObject?>? allItems, List<NotificationObject?>? newItems}) {
    if (allItems?.isBlank == true) lastDayInTheListNotification = null;
    final result = <NotificationObject?>[];
    result.addAll(allItems ?? []);

    // group new items follow by day
    final groupedItems = groupBy(newItems ?? [], (p0) => p0?.createdAt?.yMMMMd).entries.toList();

    // add all items to result if it's group is added.
    if (groupedItems.first.key == lastDayInTheListNotification) {
      if (result.isNotEmpty == true) result.last = result.last?.copyWith(isLast: false);
      result.addAll(groupedItems.first.value.map((e) => e as NotificationObject?));
      lastDayInTheListNotification = groupedItems.last.key;
      groupedItems.removeAt(0);
      result.last = result.last?.copyWith(isLast: true);
    } else {
      lastDayInTheListNotification = groupedItems.last.key;
    }

    for (var groupedNotifications in groupedItems) {
      // add the group title item.
      result.add(
        NotificationObject(
            isLabel: true,
            createdAt: (groupedNotifications.value.firstOrNull as NotificationObject?)?.createdAt),
      );

      groupedNotifications.value.last =
          (groupedNotifications.value.last as NotificationObject?)?.copyWith(isLast: true);

      // add all notifications follow by it's group.
      result.addAll(groupedNotifications.value.map((e) => e as NotificationObject?));
    }
    return result;
  }

  Future<void> readNotification(NotificationObject? notificationObject) async {
    notificationObject = notificationObject?.copyWith(status: 1);
    items[items.indexWhere((element) => element?.pushId == notificationObject?.pushId)] =
        notificationObject;
    update();
    notiRepo.readNotifications(notificationObject?.pushId);
    Get.toNamed(Routes.NOTIFICATION_DETAILS, arguments: notificationObject);
  }

  Future<void> readAllNotifications() async {
    Fimber.d('readAllNotifications()');
    final lstTmp = <NotificationObject?>[];
    for (var element in items) {
      final elementTmp = element?.copyWith(status: 1);
      lstTmp.add(elementTmp);
    }
    items.clear();
    items.addAll(lstTmp);
    update();
    notiRepo.readAll();
  }
}
