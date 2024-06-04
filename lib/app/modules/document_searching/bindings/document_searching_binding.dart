


import 'package:ftu_lms/app/modules/document_searching/controllers/document_searching_controller.dart';
import 'package:ftu_lms/app/modules/document_searching/repository/Impl/document_searching_repository_impl.dart';
import 'package:ftu_lms/app/modules/document_searching/repository/document_searching_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class DocumentSearchingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentSearchingController>(
            () => DocumentSearchingController(), fenix: true
    );
    Get.lazyPut<DocumentSearchingRepository>(() => DocumentSearchingRepositoryImpl());
  }
}