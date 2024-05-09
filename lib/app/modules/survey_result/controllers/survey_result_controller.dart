// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_request.dart';
import 'package:ftu_lms/app/modules/survey_result/model/survey_result_response.dart';
import 'package:ftu_lms/app/modules/survey_result/repository/survey_result_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:get/get.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';

class SurveyResultController extends BaseListController<SurveyResultResponse> {
  SurveyResultRequest _request = const SurveyResultRequest();
  SurveyResultRequest _requestDraft = const SurveyResultRequest();

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  SurveyResultRequest getRequestData() => _request;

  void filterRequestData() {
    if (_request == _requestDraft) return;
    _request = _requestDraft;
    refreshData();
  }

  void setSearchAdvanceResponse(SearchAdvanceResponse? model) {
    _requestDraft = _request.copyWith(
      year: model?.year,
      semester: model?.semester,
    );
  }

  @override
  void onInit() async {
    super.onInit();
    userObject.value = await userRepo.retrieveUserInfo();
  }

  @override
  Future<Result<BaseResponseObject<List<SurveyResultResponse?>?>, Exception>> callToHost() {
    SurveyResultRepository repository = Get.find();
    return repository.getSurveyItemList(_request.copyWith(
        idUser: userObject?.value?.iduser,
        year: _request.year ?? "",
        semester: _request.semester ?? 0,
        length: maxLengthResult,
        startindex: pageIndex));
  }

  navigateItem(SurveyResultResponse item) async {
    var resultCreate = await Get.toNamed(Routes.SURVEY_ITEM, arguments: item);
    if (resultCreate is bool && resultCreate) {
      refreshData();
    }
  }
}
