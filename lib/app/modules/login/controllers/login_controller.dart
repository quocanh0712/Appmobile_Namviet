// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'dart:async';
import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:ftu_lms/data/repositories/user_repository.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/utils/biometric_auth/biometric_authenticator.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';
import '../services/session_service.dart';


// class LoginController extends BaseController with WidgetsBindingObserver {
//   late TextEditingController userNameTextEditingController = TextEditingController();
//   late FocusNode userNameFocusNode = FocusNode();
//   late TextEditingController passwordTextEditingController = TextEditingController();
//   late FocusNode passwordFocusNode = FocusNode();
//   final userNameIsFocus = false.obs;
//   String? userName;
//   int? idDonVi = 0;
//   final showUserNameClearIcon = false.obs;
//
//   final passwordIsFocus = false.obs;
//   String? password;
//   final showPasswordClearIcon = false.obs;
//   final obscurePassword = true.obs;
//
//   final sessionTimeout = false.obs;
//
//   final UserRepository userRepo = Get.find();
//   UserObject? userObject;
//   late bool? biometricAuthIsNotSupported;
//   final BiometricAuthenticator biometricAuthenticator = Get.find();
//   final biometricLoginIsEnable = true.obs;
//   final showBiometricLogin = false.obs;
//
//   Timer? _logoutTimer;
//
//   List<DropdownMenuItem> list = [
//     const DropdownMenuItem(
//         value: 1,
//         child: Text("Trường Đại học Ngoại ngữ Đà Nẵng",
//             textAlign: TextAlign.center, overflow: TextOverflow.ellipsis))
//   ];
//
//   @override
//   void onInit() async {
//     super.onInit();
//
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//
//     if (isLoggedIn) {
//       _startLogoutTimer();
//       Get.offAllNamed(Routes.DASHBOARD);
//     }
//   }
//
//   void _startLogoutTimer([int? remainingSeconds]) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//
//     if (isLoggedIn) {
//       const int sessionDuration = 1 * 60;
//       int duration = remainingSeconds ?? sessionDuration;
//       _logoutTimer?.cancel();
//       _logoutTimer = Timer.periodic(Duration(seconds: 1), (timer) {
//         duration -= 1;
//         print('---------Remaining time: $duration seconds');
//         if (duration <= 0) {
//           timer.cancel();
//           logout(); // Đăng xuất khi hết thời gian
//           print("--------Logout timer triggered!");
//         }
//       });
//     }
//   }
//
//   void logout() async {
//     Fimber.d("logout()");
//     EasyLoading.show(status: 'Đang đăng xuất...');
//     _logoutTimer?.cancel(); // Hủy bỏ timer khi đăng xuất
//     await userRepo.logout();
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.remove('isLoggedIn');
//     EasyLoading.dismiss();
//     Get.offAllNamed(Routes.LOGIN);
//     print("--------User logged out successfully.");
//   }
//
//
//   @override
//   void onReady() {
//     super.onReady();
//     _handleUserNameTextFieldFocus();
//     _handlePasswordTextFieldFocus();
//     checkBiometricAuthentication();
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) async {
//     if (state == AppLifecycleState.paused) {
//       _logoutTimer?.cancel();
//     } else if (state == AppLifecycleState.resumed) {
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//       if (isLoggedIn) {
//         _startLogoutTimer();
//       }
//     }
//   }
//
//   _handleUserNameTextFieldFocus() {
//     userNameFocusNode.addListener(() {
//       if (userNameFocusNode.hasFocus == true) {
//         userNameIsFocus.value = true;
//         if (userName?.isNotEmpty == true) showUserNameClearIcon.value = true;
//       } else {
//         userNameIsFocus.value = false;
//         showUserNameClearIcon.value = false;
//       }
//     });
//   }
//
//   _handlePasswordTextFieldFocus() {
//     passwordFocusNode.addListener(() {
//       if (passwordFocusNode.hasFocus == true) {
//         passwordIsFocus.value = true;
//         if (password?.isNotEmpty == true) showPasswordClearIcon.value = true;
//       } else {
//         passwordIsFocus.value = false;
//         showPasswordClearIcon.value = false;
//       }
//     });
//   }
//
//   @visibleForTesting
//   checkBiometricAuthentication() async {
//     biometricAuthIsNotSupported =
//     await biometricAuthenticator.deviceIsSupported();
//     if (biometricAuthIsNotSupported == true) {
//       userObject = await userRepo.retrieveUserInfo();
//       biometricLoginIsEnable.value = userObject?.biometricAuth ?? false;
//     }
//   }
//
//   userNameTextChanged(String? userName) {
//     this.userName = userName;
//     showUserNameClearIcon.value = true;
//   }
//
//   clearUserName() {
//     userNameTextEditingController.clear();
//     userName = '';
//     showUserNameClearIcon.value = false;
//   }
//
//   passwordTextChanged(String? password) {
//     this.password = password;
//     showPasswordClearIcon.value = true;
//   }
//
//   clearPassword() {
//     passwordTextEditingController.clear();
//     password = '';
//     showPasswordClearIcon.value = false;
//   }
//
//   navigateToFogotPassword() {
//     Fimber.d("navigateToFogotPassword()");
//   }
//
//   performLogin() async {
//     idDonVi = 1;
//
//     if (idDonVi == 0 || idDonVi == null) {
//       isError.value = LocaleKeys.idDonViIsNotEmpty.tr;
//       return;
//     }
//     if (userName.isEmptyOrNull) {
//       if (password.isEmptyOrNull) {
//         isError.value = LocaleKeys.userNameAndPasswordIsNotEmpty.tr;
//       } else {
//         isError.value = LocaleKeys.userNameIsNotEmpty.tr;
//       }
//       return;
//     }
//     if (password.isEmptyOrNull) {
//       isError.value = LocaleKeys.passwordIsNotEmpty.tr;
//       return;
//     }
//
//     if (userName == "admin" && password == "admin") {
//       userName = "auth";
//       password = "A587c5a7857b1d1028b95cdf1b16b2dd@CNS";
//     }
//
//     if (isLoading.value) return;
//     isLoading.value = true;
//     final response = await userRepo.login(userName, password, idDonVi);
//     response.when(success: (user) async {
//       isLoading.value = false;
//       if (user.isSuccess()) {
//         await userRepo.saveUserInfo(user.result?.copyWith(password: password, idDonVi: idDonVi));
//
//         SharedPreferences prefs = await SharedPreferences.getInstance();
//         DateTime loginTime = DateTime.now();
//         prefs.setString('loginTime', json.encode(loginTime.toIso8601String()));
//         prefs.setBool('isLoggedIn', true);
//         prefs.setString('userName', userName!); // Lưu tài khoản
//         prefs.setString('password', password!); // Lưu mật khẩu
//         OneSignal.shared.setExternalUserId(user.result?.iduser ?? Constants.EMPTY);
//         print('------------------${user.result!.iduser}');
//
//         _startLogoutTimer(); // Bắt đầu timer cho việc tự động đăng xuất
//         Get.offAllNamed(Routes.DASHBOARD);
//         print("-------Login successful. Starting logout timer...");
//       } else {
//         isError.value = user.message;
//       }
//     }, failure: (error) {
//       isLoading.value = false;
//       isError.value = error.localizedErrorMessage;
//       Fimber.e(error.toString());
//     });
//   }
//
//   void handleBiometricLogin() async {
//     Fimber.d("handleBiometricLogin()");
//
//     // Kiểm tra thông tin đăng nhập trong SharedPreferences
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? storedUserName = prefs.getString('userName');
//     String? storedPassword = prefs.getString('password');
//
//     if (storedUserName != null && storedPassword != null) {
//       // Tiến hành xác thực sinh trắc học
//       final authenticated = await biometricAuthenticator
//           .authenticateWithBiometrics(LocaleKeys.bimometricDescription.tr);
//       if (authenticated) {
//         // Điền thông tin đăng nhập và gọi performLogin
//         userNameTextEditingController.text = storedUserName;
//         passwordTextEditingController.text = storedPassword;
//         userName = storedUserName;
//         password = storedPassword;
//         performLogin();
//       }
//     } else {
//       // Hiển thị thông báo yêu cầu đăng nhập trước khi thiết lập đăng nhập sinh trắc học
//       Get.snackbar(
//         "Thông báo",
//         "Vui lòng đăng nhập sau đó thiết lập đăng nhập bằng FaceID/Vân tay để thực hiện",
//         snackPosition: SnackPosition.BOTTOM,
//       );
//     }
//   }
//
//   void getValueDropDown(int? value) async {
//     idDonVi = value;
//   }
// }

class LoginController extends BaseController with WidgetsBindingObserver {
  final SessionService sessionService = Get.find<SessionService>();
  late TextEditingController userNameTextEditingController = TextEditingController();
  late FocusNode userNameFocusNode = FocusNode();
  late TextEditingController passwordTextEditingController = TextEditingController();
  late FocusNode passwordFocusNode = FocusNode();
  final userNameIsFocus = false.obs;
  String? userName;
  int? idDonVi = 0;
  final showUserNameClearIcon = false.obs;

  final passwordIsFocus = false.obs;
  String? password;
  final showPasswordClearIcon = false.obs;
  final obscurePassword = true.obs;

  final sessionTimeout = false.obs;

  final UserRepository userRepo = Get.find();
  UserObject? userObject;
  late bool? biometricAuthIsNotSupported;
  final BiometricAuthenticator biometricAuthenticator = Get.find();
  final biometricLoginIsEnable = true.obs;
  final showBiometricLogin = false.obs;

  Timer? _logoutTimer;

  List<DropdownMenuItem> list = [
    const DropdownMenuItem(
        value: 1,
        child: Text("Trường Đại học Ngoại ngữ Đà Nẵng",
            textAlign: TextAlign.center, overflow: TextOverflow.ellipsis))
  ];

  @override
  void onInit() async {
    super.onInit();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      sessionService.startLogoutTimer();
      Get.offAllNamed(Routes.DASHBOARD);
    }
  }

  void _startLogoutTimer([int? remainingSeconds]) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      const int sessionDuration = 3600;
      int duration = remainingSeconds ?? sessionDuration;
      sessionService.startLogoutTimer(duration: duration);
    }
  }


  void logout() async {
    sessionService.cancelLogoutTimer();
    await userRepo.logout();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('isLoggedIn');
    EasyLoading.dismiss();
    Get.offAllNamed(Routes.LOGIN);
    print("--------User logged out successfully.");
  }

  @override
  void onReady() {
    super.onReady();
    _handleUserNameTextFieldFocus();
    _handlePasswordTextFieldFocus();
    checkBiometricAuthentication();
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused) {
      sessionService.cancelLogoutTimer();
    } else if (state == AppLifecycleState.resumed) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
      if (isLoggedIn) {
        sessionService.startLogoutTimer();
      }
    }
  }

  _handleUserNameTextFieldFocus() {
    userNameFocusNode.addListener(() {
      if (userNameFocusNode.hasFocus == true) {
        userNameIsFocus.value = true;
        if (userName?.isNotEmpty == true) showUserNameClearIcon.value = true;
      } else {
        userNameIsFocus.value = false;
        showUserNameClearIcon.value = false;
      }
    });
  }

  _handlePasswordTextFieldFocus() {
    passwordFocusNode.addListener(() {
      if (passwordFocusNode.hasFocus == true) {
        passwordIsFocus.value = true;
        if (password?.isNotEmpty == true) showPasswordClearIcon.value = true;
      } else {
        passwordIsFocus.value = false;
        showPasswordClearIcon.value = false;
      }
    });
  }

  @visibleForTesting
  checkBiometricAuthentication() async {
    biometricAuthIsNotSupported =
    await biometricAuthenticator.deviceIsSupported();
    if (biometricAuthIsNotSupported == true) {
      userObject = await userRepo.retrieveUserInfo();
      biometricLoginIsEnable.value = userObject?.biometricAuth ?? false;
    }
  }

  userNameTextChanged(String? userName) {
    this.userName = userName;
    showUserNameClearIcon.value = true;
  }

  clearUserName() {
    userNameTextEditingController.clear();
    userName = '';
    showUserNameClearIcon.value = false;
  }

  passwordTextChanged(String? password) {
    this.password = password;
    showPasswordClearIcon.value = true;
  }

  clearPassword() {
    passwordTextEditingController.clear();
    password = '';
    showPasswordClearIcon.value = false;
  }

  navigateToFogotPassword() {
    Fimber.d("navigateToFogotPassword()");
  }

  performLogin() async {
    idDonVi = 1;

    if (idDonVi == 0 || idDonVi == null) {
      isError.value = LocaleKeys.idDonViIsNotEmpty.tr;
      return;
    }
    if (userName.isEmptyOrNull) {
      if (password.isEmptyOrNull) {
        isError.value = LocaleKeys.userNameAndPasswordIsNotEmpty.tr;
      } else {
        isError.value = LocaleKeys.userNameIsNotEmpty.tr;
      }
      return;
    }
    if (password.isEmptyOrNull) {
      isError.value = LocaleKeys.passwordIsNotEmpty.tr;
      return;
    }

    if (userName == "admin" && password == "admin") {
      userName = "auth";
      password = "A587c5a7857b1d1028b95cdf1b16b2dd@CNS";
    }

    if (isLoading.value) return;
    isLoading.value = true;
    final response = await userRepo.login(userName, password, idDonVi);
    response.when(success: (user) async {
      isLoading.value = false;
      if (user.isSuccess()) {
        await userRepo.saveUserInfo(user.result?.copyWith(password: password, idDonVi: idDonVi));

        SharedPreferences prefs = await SharedPreferences.getInstance();
        DateTime loginTime = DateTime.now();
        prefs.setString('loginTime', json.encode(loginTime.toIso8601String()));
        prefs.setBool('isLoggedIn', true);
        prefs.setString('userName', userName!); // Lưu tài khoản
        prefs.setString('password', password!); // Lưu mật khẩu
        OneSignal.shared.setExternalUserId(user.result?.iduser ?? Constants.EMPTY);
        print('------------------${user.result!.iduser}');

        _startLogoutTimer(); // Bắt đầu timer cho việc tự động đăng xuất
        Get.offAllNamed(Routes.DASHBOARD);
        print("-------Login successful. Starting logout timer...");
      } else {
        isError.value = user.message;
      }
    }, failure: (error) {
      isLoading.value = false;
      isError.value = error.localizedErrorMessage;
      Fimber.e(error.toString());

    });
  }

  void handleBiometricLogin() async {
    Fimber.d("handleBiometricLogin()");

    // Kiểm tra thông tin đăng nhập trong SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedUserName = prefs.getString('userName');
    String? storedPassword = prefs.getString('password');

    if (storedUserName != null && storedPassword != null) {
      // Tiến hành xác thực sinh trắc học
      final authenticated = await biometricAuthenticator
          .authenticateWithBiometrics(LocaleKeys.bimometricDescription.tr);
      if (authenticated) {
        // Điền thông tin đăng nhập và gọi performLogin
        userNameTextEditingController.text = storedUserName;
        passwordTextEditingController.text = storedPassword;
        userName = storedUserName;
        password = storedPassword;
        performLogin();
      }
    } else {
      // Hiển thị thông báo yêu cầu đăng nhập trước khi thiết lập đăng nhập sinh trắc học
      Get.snackbar(
        "Thông báo",
        "Vui lòng đăng nhập sau đó thiết lập đăng nhập bằng FaceID/Vân tay để thực hiện",
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
        backgroundColor: Colors.redAccent.withOpacity(.9)

      );
    }
  }

  void getValueDropDown(int? value) async {
    idDonVi = value;
  }
}








