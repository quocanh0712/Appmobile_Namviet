// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_request.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_response.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/repository/list_teacher_info_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ListTeacherInfoController extends BaseListController<TeacherInfoResponse> {
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
  Future<Result<BaseResponseObject<List<TeacherInfoResponse?>?>, Exception>> callToHost() {
    ListTeacherInfoRepository repository = Get.find();
    return repository.getListTeacherInfo(
        TeacherInfoRequest(keyword: textSearch, length: maxLengthResult, startindex: pageIndex));
  }

  void callTelephone(String? phone) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phone);
    await launchUrl(launchUri);
  }
}
