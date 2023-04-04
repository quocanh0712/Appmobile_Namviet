// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_request.dart';
import 'package:ftu_lms/app/modules/working_process/model/working_process_response.dart';
import 'package:ftu_lms/app/modules/working_process/repository/working_process_repository.dart';
import 'package:ftu_lms/app/routes/app_pages.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

class ListWorkingProcessController extends BaseListController<WorkingProcessResponse> {
  WorkingProcessRepository repository = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  Future<Result<BaseResponseObject<List<WorkingProcessResponse?>?>, Exception>> callToHost() {
    return repository.getWorkingProcessList(
        WorkingProcessRequest(length: maxLengthResult, startindex: pageIndex));
  }

  void createNewWorkingProcess() async {
    var resultCreate = await Get.toNamed(Routes.CREATE_WORKING_PROCESS, arguments: [true, null]);
    if (resultCreate is bool && resultCreate) {
      refreshData();
    }
  }

  void updateWorkingProcess(int index) async {
    var resultCreate =
        await Get.toNamed(Routes.CREATE_WORKING_PROCESS, arguments: [false, getItem(index)]);
    if (resultCreate is bool && resultCreate) {
      refreshData();
    }
  }

  removeWorkingProcess(int index) async {
    isLoading.value = true;
    var response = await repository.deleteWorkingProcess(getItem(index));
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        showAlertDialog(LocaleKeys.titleDialog.tr, LocaleKeys.deleteSuccess.tr, () {
          refreshData();
        });
      } else {
        isError.value = data.message;
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = e.localizedErrorMessage;
    });
  }
}
