

import 'dart:io';



import 'package:dio/dio.dart' as dio;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_request.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/create_email_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/repository/create_email_repository.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../../../data/bean/user_object/user_object.dart';
import '../../../../../../data/repositories/user_repository.dart';


class CreateEmailController extends BaseController with GetSingleTickerProviderStateMixin {
  final TextEditingController receiverController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  RxString userName = "".obs;
  String pdfURL = "";
  RxBool isInputValid = false.obs;

  var listUser = List<AllUserResponse?>.empty(growable: true).obs;

  final userRepo = Get.find<UserRepository>();
  Rx<UserObject?> userObject = UserObject().obs;

  var selectedReceivers = <String>[].obs;
  var filteredSuggestions = <SearchFieldListItem<String>>[].obs;

  File? _file;
  Rx<PlatformFile?> rxPlatformFile = Rx<PlatformFile?>(null);

  late AnimationController loadingController;

  var selectedReceiverIds = <int>[].obs;



  void selectFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'pdf'],
    );

    if (result != null && result.files.single.path != null) {
      _file = File(result.files.single.path!);
      rxPlatformFile.value = result.files.single;
      loadingController.reset();
      loadingController.forward();
      Get.snackbar(
        "Thông báo",
        "File đã được tải lên thành công",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
        backgroundColor: Colors.green.withOpacity(.9),
        snackStyle: SnackStyle.FLOATING,
        titleText: Text(
          "Thông báo",
          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold), // Tăng cỡ chữ cho tiêu đề
        ),
        messageText: Text(
          "File đã được tải lên thành công",
          style: TextStyle(color: Colors.white, fontSize: 14.sp,),
        ),
      );
      print("Selected file path: ${rxPlatformFile.value?.path ?? ""}");
    } else {
      Get.snackbar(
        "Thông báo",
        "Không có file nào được chọn",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
        backgroundColor: Colors.redAccent.withOpacity(.9),
        snackStyle: SnackStyle.FLOATING,
        titleText: Text(
          "Thông báo",
          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        messageText: Text(
          "Không có file nào được chọn",
          style: TextStyle(color: Colors.white, fontSize: 14.sp),
        ),
      );
    }
  }

  void clearSelectedFile() {
    _file = null;
    rxPlatformFile.value = null;
  }

  Future<void> uploadFile() async {
    if (_file == null) {
      print("No file selected");
      return;
    }

    try {
      dio.Dio dioInstance = dio.Dio();


      String? mimeType = lookupMimeType(_file!.path);
      var formData = dio.FormData.fromMap({
        'file': await dio.MultipartFile.fromFile(
          _file!.path,
          filename: _file!.path.split('/').last,
          contentType: mimeType != null ? MediaType.parse(mimeType) : null,
        ),
      });


      dio.Response response = await dioInstance.post(
        'https://api.ufl.essoft.vn/mobile/api/QuanLyVanBan/UploadFile',
        data: formData,
      );

      if (response.statusCode == 200) {
        var responseBody = response.data;
        if (responseBody is Map<String, dynamic>) {
          String code = responseBody['code'];
          String message = responseBody['message'];
          String result = responseBody['result'];

          print("Upload successful");
          print("Code: $code");
          print("Message: $message");
          print("File URL: $result");
          pdfURL = result;
        } else {
          print("Unexpected response format");
        }
      } else {
        print("Upload failed with status: ${response.statusCode}");
        print("Response: ${response.data}");
      }
    } on dio.DioError catch (e) {
      if (e.response != null) {
        print("Error uploading file: ${e.message}");
        print("Status code: ${e.response?.statusCode}");
        print("Response data: ${e.response?.data}");
      } else {
        print("Error sending request: ${e.message}");
      }
    } catch (e) {
      print("Error uploading file: $e");
    }
  }


  void rxGetx() {

    print("selectedReceivers has changed: ${selectedReceivers.value}");
  }

  @override
  void onInit() async {
    super.onInit();
    userObject.value = await userRepo.retrieveUserInfo();
    userName.value = userObject.value?.username ?? "UserName";
    print("+++++++${userName}");

    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {});

    titleController.addListener(validateInputs);
    contentController.addListener(validateInputs);

  }

  @override
  void onReady() {
    super.onReady();
    loadUserList();
  }

  void addReceiver(String receiver) {
    if (!selectedReceivers.contains(receiver)) {
      selectedReceivers.add(receiver);
      updateFilteredSuggestions();
    }
  }

  void removeReceiver(String receiver) {
    selectedReceivers.remove(receiver);
    updateFilteredSuggestions();
  }

  void updateFilteredSuggestions() {
    filteredSuggestions.value = listUser
        .where((user) => user != null && !selectedReceivers.contains(user!.username))
        .map((user) => SearchFieldListItem<String>(user!.username ?? ''))
        .toList();
  }

  void showLoadingIndicator() {
    EasyLoading.show(status: 'Đang tải...');
  }

  void dismissLoadingIndicator() {
    EasyLoading.dismiss();
  }

  void loadUserList() async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    CreateEmailRepository repository = Get.find();
    var response = await repository.getAllUser(
      AllUserRequest(
        noiDung: "", startindex: 0, length: 300,
      ),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          listUser.value = data.result?.toList() ?? [];
          updateFilteredSuggestions();
          print("-------$listUser");
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

  int? getUserIdByName(String username) {
    for (var user in listUser) {
      if (user?.username == username) {
        return user?.id;
      }
    }
    return null;
  }

  void validateInputs() {
    isInputValid.value =  
        titleController.text.trim().isNotEmpty &&
        contentController.text.trim().isNotEmpty && selectedReceivers.isNotEmpty;
  }


  Future<void> sendEmail({int phanLoai = 0}) async {
    if (isLoading.value == true) return;
    isLoading.value = true;
    showLoadingIndicator();
    await uploadFile();
    String title = titleController.text.trim();
    String content = contentController.text.trim();

    CreateEmailRepository repository = Get.find();
    var response = await repository.sendEmail(
      CreateEmailResponse(
        iduser: userObject.value?.iduser,
        listNguoiNhan: selectedReceiverIds.toList(),
        tieuDe: title,
        noiDung: content,
        listFile: [pdfURL ?? ''],
        phanLoai: phanLoai,
      ),
    );
    response.when(
      success: (data) {
        isLoading.value = false;
        dismissLoadingIndicator();
        if (data.isSuccess()) {
          print("THÀNH CÔNGGGG");
          // Clear the controllers, selected receivers, and the selected file
          titleController.clear();
          contentController.clear();
          selectedReceivers.clear();
          selectedReceiverIds.clear();
          rxPlatformFile.value = null;

          String successMessage = (phanLoai == 1)
              ? "Email đã được lưu thành công"
              : "Email đã được gửi thành công";

          Get.snackbar(
            "Thông báo",
            successMessage,
            snackPosition: SnackPosition.TOP,
            colorText: Colors.white,
            backgroundColor: Colors.green.withOpacity(.9),
            snackStyle: SnackStyle.FLOATING,
            titleText: Text(
              "Thông báo",
              style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            messageText: Text(
              successMessage,
              style: TextStyle(color: Colors.white, fontSize: 14.sp,),
            ),
          );
        } else {
          isError.value = data.message;
          print("-------------------${data.message}");

          String errorMessage = (phanLoai == 1)
              ? "Lưu email thất bại"
              : "Gửi email thất bại";
          Get.snackbar(
            "Thông báo",
            "$errorMessage: ${data.message}",
            snackPosition: SnackPosition.TOP,
            colorText: Colors.white,
            backgroundColor: Colors.redAccent.withOpacity(.9),
            snackStyle: SnackStyle.FLOATING,
            titleText: Text(
              "Thông báo",
              style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            messageText: Text(
              "$errorMessage: ${data.message}",
              style: TextStyle(color: Colors.white, fontSize: 14.sp,),
            ),
          );
        }
      },
      failure: (e) {
        isLoading.value = false;
        dismissLoadingIndicator();
        isError.value = e.toString();
        Get.snackbar(
          "Thông báo",
          "Gửi email thất bại: ${e.toString()}",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Colors.redAccent.withOpacity(.9),
          snackStyle: SnackStyle.FLOATING,
          titleText: Text(
            "Thông báo",
            style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          messageText: Text(
            "Gửi email thất bại: ${e.toString()}",
            style: TextStyle(color: Colors.white, fontSize: 14.sp,),
          ),
        );
      },
    );
  }



  Future<bool> onWillPop() async {
    if (titleController.text.isNotEmpty ||
        contentController.text.isNotEmpty ||
        selectedReceivers.isNotEmpty) {
      bool? result = await Get.dialog<bool>(
        CupertinoTheme(
          data: CupertinoThemeData(
            primaryColor: Colors.blue,
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(color: Colors.black),
              actionTextStyle: TextStyle(color: Colors.green),
            ),
          ),
          child: CupertinoAlertDialog(

            title: Text('Thông báo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16),
                Text('Bạn có muốn lưu lại văn bản vào thư nháp?', style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
                ),),
                SizedBox(height: 24),
              ],
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  titleController.clear();
                  contentController.clear();
                  selectedReceivers.clear();
                  selectedReceiverIds.clear();
                  rxPlatformFile.value = null;
                  Navigator.of(Get.context!).pop(true);
                },
                isDefaultAction: true,
                child: Text(
                  'Không',
                  style: GoogleFonts.openSans(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              CupertinoDialogAction(
                onPressed: () async {
                  await sendEmail(phanLoai: 1);
                  Navigator.of(Get.context!).pop(false);
                },
                child: Text(
                  'Có',
                  style:  GoogleFonts.openSans(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
                ),
              ),
            ],
          ),
        ),
      );
      return result ?? false;
    }
    return true;
  }



}



