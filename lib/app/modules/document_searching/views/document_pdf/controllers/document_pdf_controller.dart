


import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DocumentPdfController extends BaseController{
  String fileUrl = "";
  @override
  void onInit() async{

    super.onInit();

  }


  @override
  void onReady() async {
    super.onReady();

    //final List<dynamic> arguments = Get.arguments;
    fileUrl = Get.arguments as String;
    print("File URL: $fileUrl");

  }

  @override
  void onClose() {
    super.onClose();
  }
}