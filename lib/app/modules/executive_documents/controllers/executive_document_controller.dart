// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.
import 'package:fimber/fimber.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../base/base_controller.dart';

class ExecutiveDocumentsController extends BaseController {
  String getTitle() => LocaleKeys.executiveDocuments.tr;

  void assignDocument() {
    Fimber.d("assignDocument");
    Get.toNamed(Routes.ASSIGN_DOCUMENT);
  }

  void forwardDocument() {
    Fimber.d("forwardDocument");
    Get.toNamed(Routes.FORWARD_DOCUMENT);
  }
}
