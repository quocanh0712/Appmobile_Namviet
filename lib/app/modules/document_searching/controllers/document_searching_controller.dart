

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ftu_lms/app/modules/document_searching/model/document_searching_response.dart';
import 'package:ftu_lms/app/modules/document_searching/repository/document_searching_repository.dart';
import 'package:get/get.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../routes/app_pages.dart';
import '../../base/base_controller.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/document_searching_request.dart';

class DocumentSearchingController extends BaseController<DocumentSearchingResponse> with SingleGetTickerProviderMixin {
  late TabController tabController;
  final FocusNode focusNode = FocusNode();
  final TextEditingController searchController = TextEditingController();
  late  InAppWebViewController webController;

  var listDocument = List<DocumentSearchingResponse?>.empty(growable: true).obs;
  var filteredDocument = List<DocumentSearchingResponse?>.empty(growable: true).obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  String currentLoaiDiDen = "0";

  @override
  void onInit() {
    super.onInit();
    loadDocumentList();
    tabController = TabController(length: 2, vsync: this);

    focusNode.addListener(() {
      update();
    });

    tabController.addListener(() {
      if (tabController.index == 0) {
        currentLoaiDiDen = "0";
      } else {
        currentLoaiDiDen = "1";
      }
      loadDocumentList();
    });


    searchController.addListener(() {
      filterDocuments();
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    focusNode.dispose();
    searchController.dispose();
    super.onClose();
  }

  @override
  void onReady() async {
    super.onReady();

  }

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  void loadDocumentList() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    DocumentSearchingRepository repository = Get.find();
    var response = await repository.getDocumentList(
      DocumentSearchingRequest(iduser: userObject.value?.iduser, startindex: 0, length: 100, loaiDiDen: currentLoaiDiDen),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listDocument.value = data.result?.toList() ?? [];
          filteredDocument.value = listDocument.value; // Initialize with the full list
          print("-------$listDocument");
        } else {
          isError.value = data.message;
        }
      },
      failure: (e) {
        isLoading.value = false;
        dismissLoadingIndicator();
        isError.value = e.toString();
      },
    );
  }

  Future<void> updateStatus(int id) async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    DocumentSearchingRepository repository = Get.find();
    var response = await repository.updateStatus(id, userObject.value?.iduser);
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          print("Status updated for document with id: $id");
          loadDocumentList();
        } else {
          isError.value = data.message;
        }
      },
      failure: (e) {
        isLoading.value = false;
        dismissLoadingIndicator();
        isError.value = e.toString();
      },
    );
  }

  void filterDocuments() {
    String query = searchController.text.toLowerCase();
    if (query.isEmpty) {
      filteredDocument.value = listDocument.value;
    } else {
      filteredDocument.value = listDocument
          .where((document) =>
      document!.trichYeu.toString().toLowerCase().contains(query) ||
          document.soKyHieu.toString().toLowerCase().contains(query) ||
          document.coQuanBanHanh.toString().toLowerCase().contains(query))
          .toList();
    }
  }

  void navigateToDocumentPdf(int index) {
    String pdfUrl = listDocument[index]?.fileUrl.toString() ?? "0";
    Get.toNamed(Routes.DOCUMENT_PDF, arguments: pdfUrl);

  }
}
