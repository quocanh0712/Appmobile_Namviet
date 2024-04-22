// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/schedule_daily/model/schedule_daily_request.dart';
import 'package:ftu_lms/app/modules/schedule_daily/repository/schedule_daily_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:get/get.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../model/schedule_daily_response.dart';

class ScheduleDailyController extends BaseController<ScheduleDailyResponse> {
  String title = "";
  DateTime timeDaily = DateTime.now();
  var listTimeObs = List.empty(growable: true).obs;
  var listScheduleDaily = List<ScheduleDailyResponse?>.empty(growable: true).obs;
  String idUser = "B10CCD3B-4C45-4191-A573-62EA82A84A80";

  final UserRepository userRepo = Get.find();
  UserObject? userObject;


  @override
  void onInit() {

    title = Get.arguments;
    listTimeObs.value = [
      LocaleKeys.AM6.tr,
      LocaleKeys.AM7.tr,
      LocaleKeys.AM8.tr,
      LocaleKeys.AM9.tr,
      LocaleKeys.AM10.tr,
      LocaleKeys.AM11.tr,
      LocaleKeys.PM12.tr,
      LocaleKeys.PM1.tr,
      LocaleKeys.PM2.tr,
      LocaleKeys.PM3.tr,
      LocaleKeys.PM4.tr,
      LocaleKeys.PM5.tr,
      LocaleKeys.PM6.tr,
      LocaleKeys.PM7.tr,
      LocaleKeys.PM8.tr,
      LocaleKeys.PM9.tr,
      LocaleKeys.PM10.tr,
      LocaleKeys.PM11.tr,
    ];
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    loadScheduleDaily();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;
//DateTimeUtils.formatDateTime(timeDaily, dateYMD)
  void loadScheduleDaily() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    ScheduleDailyRepository repository = Get.find();
    var response = await repository.getScheduleDaily(
        ScheduleDailyRequest( nowdate: DateTimeUtils.formatDateTime(timeDaily, dateYMD), idUser: userObject?.iduser , startindex: 0 , length: 10 ), );
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        listScheduleDaily.value = data.result?.toList() ?? [];
        print("-------${listScheduleDaily}");
      } else {
        listScheduleDaily.value = [];
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      listScheduleDaily.value = [];
      isError.value = e.toString();
    });
  }
}
