// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/schedule_time/repository/schedule_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';
import 'package:week_of_year/date_week_extensions.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../../utils/date_time_utils.dart';
import '../../attendance_stu/model/attendance_stu_request.dart';
import '../../attendance_stu/model/year_time_response.dart';
import '../../attendance_stu/repository/attendance_stu_repository.dart';
import '../../base/base_list_controller.dart';
import '../model/schedule_time_request.dart';
import '../model/schedule_time_response.dart';

class ScheduleTimeController extends BaseListController<ScheduleTimeResponse> {
  ScheduleTimeRequest? _scheduleTimeRequest;
  ScheduleTimeRequest? _scheduleTimeRequestDraft;
  var listScheduleTime = List<ScheduleTimeResponse?>.empty(growable: true).obs;
  var yearTime = List<YearTimeResponse?>.empty(growable: true).obs;
  DateTime timeDaily = DateTime.now();
  final UserRepository userRepo = Get.find();
  UserObject? userObject;





  String title = "";

  @override
  void onInit() async {

    title = Get.arguments;
    super.onInit();

    await loadYearTime();
    if (yearTime.isNotEmpty) {
      int tuanHienTai = yearTime[0]?.tuanHienTai ?? 0;
      String namHienTai = yearTime[0]?.namHienTai ?? "0";
      loadScheduleTime(tuanHienTai, namHienTai);
    } else {
      print("fail");
    }
  }

  @override
  void onReady() async {
    super.onReady();




  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> loadYearTime() async {
    if (isLoading.value == true) return;
    try {
      EasyLoading.show(status: '');
      isLoading.value = true;
      AttendanceStuRepository repository = Get.find();
      var response = await repository.getYearTime(AttendanceStuRequest()
      );
      response.when(
        success: (data) {
          isLoading.value = false;
          if (data.isSuccess()) {
            yearTime.value = data.result?.toList() ?? [];
            print("-------$yearTime");
          } else {
            isError.value = data.message;
          }
        },
        failure: (e) {
          isLoading.value = false;
          isError.value = e.toString();
        },
      );
    } finally {
      EasyLoading.dismiss(); // Dismiss loading indicator
    }
  }

  ScheduleTimeRequest? getScheduleTimeRequest() => _scheduleTimeRequest;

  void setScheduleTimeRequest(SearchAdvanceResponse? model) {
    _scheduleTimeRequestDraft = _scheduleTimeRequest?.copyWith(
        year: model?.year, semester: model?.semester, session: model?.session);
  }

  void filterScheduleData() {
    if (_scheduleTimeRequest == _scheduleTimeRequestDraft) return;
    _scheduleTimeRequest = _scheduleTimeRequestDraft;
    refreshData();
  }

  String getTitle() => title;

  @override
  Future<Result<BaseResponseObject<List<ScheduleTimeResponse?>?>, Exception>> callToHost() {
    ScheduleTimeRepository repository = Get.find();
    return repository.getScheduleTime(
        _scheduleTimeRequest?.copyWith(length: maxLengthResult, startindex: pageIndex , idUser: userObject?.iduser ));

  }

  void loadScheduleTime(int tuanHienTai, String namHienTai) async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    ScheduleTimeRepository repository = Get.find();
    var response = await repository.getScheduleTime(
      ScheduleTimeRequest( nowdate: DateTimeUtils.formatDateTime(timeDaily, dateYMD), idUser: userObject?.iduser , startindex: pageIndex , length: maxLengthResult,year: namHienTai, weeksOfYear: tuanHienTai), );
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        listScheduleTime.value = data.result?.toList() ?? [];
        print("-------${listScheduleTime}");
      } else {
        listScheduleTime.value = [];
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      listScheduleTime.value = [];
      isError.value = e.toString();
    });
  }
}
