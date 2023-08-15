// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../base/base_appbar_view.dart';
import '../controllers/email_controller.dart';
import '../model/email_response.dart';
import 'email_process_view.dart';

class EmailView extends EmailProcessView<EmailController> {
  EmailView({Key? key}) : super(key: key);

  @override
  String header1() {
    return "Người gửi";
  }

  @override
  String header2() {
    return "Tiêu đề";
  }

  @override
  String header3() {
    return "Thời gian";
  }

  @override
  String? get titleAppBar => LocaleKeys.email.tr;

  @override
  String? content1(int index) {
    EmailResponse? response = controller.getItem(index);
    return "${response?.NguoiGui}";
  }

  @override
  String? content2(int index) {
    EmailResponse? response = controller.getItem(index);
    return "${response?.TieuDe}";
  }

  @override
  String? content3(int index) {
    EmailResponse? response = controller.getItem(index);
    return "${response?.ThoiGian}";
  }

  // @override
  // void onCreatedNewItem() => controller.createAssignDocument();

  @override
  void onActionEdit(int index) => controller.EditEmail(index);

  @override
  void AddEmail() => controller.AddEmail();
  // @override
  // void onActionRemove(int index) => controller.removeAssignDocument(index);
}
