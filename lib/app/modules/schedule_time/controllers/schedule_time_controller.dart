// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/schedule_time/repository/schedule_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../base/base_list_controller.dart';
import '../model/schedule_time_request.dart';
import '../model/schedule_time_response.dart';

class ScheduleTimeController extends BaseListController<ScheduleTimeResponse> {
  ScheduleTimeRequest? _scheduleTimeRequest;
  ScheduleTimeRequest? _scheduleTimeRequestDraft;

  String title = "";

  @override
  void onInit() {
    title = Get.arguments;
    super.onInit();
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
        _scheduleTimeRequest?.copyWith(length: maxLengthResult, startindex: pageIndex));
  }
}
