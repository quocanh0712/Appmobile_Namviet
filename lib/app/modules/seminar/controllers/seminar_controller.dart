

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/seminar/model/seminar_detail_request.dart';
import 'package:ftu_lms/app/modules/seminar/model/seminar_response.dart';
import 'package:ftu_lms/app/modules/seminar/repository/seminar_repository.dart';
import 'package:get/get.dart';

import '../../../../data/bean/user_object/user_object.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../base/base_controller.dart';

// class SeminarController extends BaseController<SeminarResponse>{
//   String title = "";
//   var listSeminar = List<SeminarResponse?>.empty(growable: true).obs;
//
//
//   @override
//   void onInit(){
//     super.onInit();
//
//   }
//   @override
//   void onReady() async {
//     super.onReady();
//     loadSeminar();
//   }
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   getTitle() => title;
//
//   void loadSeminar() async {
//     if (isLoading.value == true) return;
//     isLoading.value = true;
//     SeminarRepository repository = Get.find();
//     var response = await repository.getSeminarList(
//       SeminarDetailRequest(startindex: 0, length: 10),
//     );
//     response.when(
//       success: (data) {
//         isLoading.value = false;
//         if (data.isSuccess()) {
//           listSeminar.value = data.result?.toList() ?? [];
//
//
//           print("-------$listSeminar");
//         } else {
//           isError.value = data.message;
//         }
//       },
//       failure: (e) {
//         isLoading.value = false;
//         isError.value = e.toString();
//       },
//     );
//   }
//
// }

class SeminarController extends BaseController<SeminarResponse> {
  String title = "";
  var listSeminar = List<SeminarResponse?>.empty(growable: true).obs;
  var expandedList = List<bool>.empty(growable: true).obs; // List to track expansion state



  void showLoadingIndicator() {
    EasyLoading.show(status: 'Loading...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  @override
  void onInit() {
    super.onInit();
    // Initialize expandedList with false for each item in listSeminar
    expandedList.assignAll(List.generate(listSeminar.length, (_) => false));
  }

  bool isExpanded(int index) {
    return expandedList.length > index ? expandedList[index] : false;
  }

  void setExpanded(int index, bool expanded) {
    if (index < expandedList.length) {
      expandedList[index] = expanded;
      update(); // Notify listeners
    }
  }

  @override
  void onReady() async {
    super.onReady();
    loadSeminar();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getTitle() => title;

  void loadSeminar() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    SeminarRepository repository = Get.find();
    var response = await repository.getSeminarList(
      SeminarDetailRequest(startindex: 0, length: 100),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listSeminar.value = data.result?.toList() ?? [];
          expandedList.assignAll(List.generate(listSeminar.length, (_) => false));
          print("-------$listSeminar");
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
}