// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/working_process/views/base_process_view.dart';
import 'package:ftu_lms/generated/locales.g.dart';

import 'package:get/get.dart';

import '../controllers/language_process_controller.dart';

class LanguageProcessView extends BaseProcessView<LanguageProcessController> {
  LanguageProcessView({Key? key}) : super(key: key);

  @override
  String headerLeft() {
    return LocaleKeys.language.tr;
  }

  @override
  String headerRight() {
    return LocaleKeys.level.tr;
  }

  @override
  String? get titleAppBar => LocaleKeys.languageLevel.tr;

  @override
  String? contentLeft(int index) {
    return controller.getItem(index)?.foreignlanguage;
  }

  @override
  String? contentRight(int index) {
    return controller.getItem(index)?.level;
  }

  @override
  void onCreatedNewItem() => controller.createNewWorkingProcess();

  @override
  void onActionEdit(int index) => controller.updateWorkingProcess(index);

  @override
  void onActionRemove(int index) => controller.removeWorkingProcess(index);
}
