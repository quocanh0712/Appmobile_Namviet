// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

import '../../base/base_appbar_view.dart';
import '../controllers/assign_document_controller.dart';
import '../controllers/forward_document_controller.dart';
import '../model/assign_document_response.dart';
import '../model/forward_document_response.dart';
import 'document_process_view.dart';

class ForwardDocumentView
    extends DocumentProcessView<ForwardDocumentController> {
  ForwardDocumentView({Key? key}) : super(key: key);

  @override
  String header1() {
    return "Trích yếu";
  }

  @override
  String header2() {
    return "Ngày ban hành";
  }

  @override
  String header3() {
    return "Số đi";
  }

  @override
  String header4() {
    return "Trạng thái";
  }

  @override
  String? get titleAppBar => LocaleKeys.assignDocument.tr;

  @override
  String? content1(int index) {
    ForwardDocumentResponse? response = controller.getItem(index);
    return "${response?.TrichYeu}";
  }

  @override
  String? content2(int index) {
    ForwardDocumentResponse? response = controller.getItem(index);
    return "${response?.NgayBanHanh}";
  }

  @override
  String? content3(int index) {
    ForwardDocumentResponse? response = controller.getItem(index);
    return "${response?.SoDi}";
  }

  @override
  String? content4(int index) {
    ForwardDocumentResponse? response = controller.getItem(index);
    return "${response?.TrangThai}";
  }

  // @override
  // void onCreatedNewItem() => controller.createAssignDocument();

  @override
  void onActionEdit(int index) => controller.updateAssignDocument(index);

  // @override
  // void onActionRemove(int index) => controller.removeAssignDocument(index);
}
