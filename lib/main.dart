// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'dart:async';
import 'dart:convert';

import 'package:cryptography_flutter/cryptography_flutter.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/app_global_bindings.dart';
import 'package:ftu_lms/app/modules/personal/controllers/personal_controller.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/one_signal_manager.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jiffy/jiffy.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';
import 'package:status_bar_control/status_bar_control.dart';

import 'app/modules/login/controllers/login_controller.dart';
import 'app/modules/login/services/session_service.dart';
import 'app/routes/app_pages.dart';

import 'widgets/easy_loading_animation.dart';

// Future<void> main() async {
//   Fimber.plantTree(DebugTree(useColors: true));
//   Fimber.plantTree(DebugTree.elapsed());
//
//   WidgetsFlutterBinding.ensureInitialized();
//
//
//
//
//   FlutterCryptography.enable();
//   await Hive.initFlutter();
//
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       systemStatusBarContrastEnforced: false));
//
//   await StatusBarControl.setHidden(false, animation: StatusBarAnimation.FADE);
//   await StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
//    //await Jiffy.locale('vi_VN');
//   print('${Jiffy.getAllAvailableLocales().toString()}');
//
//   // setup the One Signal Push Notification.
//   OneSignalManager.init();
//
//   SystemChrome.setPreferredOrientations(
//           [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
//       .then((_) => runApp(GetMaterialApp(
//             color: Colors.transparent,
//             theme: ThemeData(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 hoverColor: Colors.transparent,
//                 focusColor: Colors.transparent,
//                 dividerColor: Colors.transparent,
//                 brightness: Brightness.light,
//                 extensions: [ThemeExtensions.light]),
//             darkTheme: ThemeData(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 hoverColor: Colors.transparent,
//                 focusColor: Colors.transparent,
//                 dividerColor: Colors.transparent,
//                 brightness: Brightness.dark,
//                 extensions: [ThemeExtensions.dark]),
//             themeMode: ThemeMode.light,
//             debugShowCheckedModeBanner: false,
//             translationsKeys: AppTranslation.translations,
//             locale: LMSLocale.enUS,
//             initialBinding: AppGlobalBindings(),
//             initialRoute: AppPages.INITIAL,
//             getPages: AppPages.routes,
//             builder: EasyLoading.init(),
//           )));
//   configLoading();
// }
//
// void configLoading() {
//   EasyLoading.instance
//     ..displayDuration = const Duration(milliseconds: 2000)
//     ..indicatorType = EasyLoadingIndicatorType.circle
//     ..loadingStyle = EasyLoadingStyle.light
//     ..indicatorSize = 45.0
//     ..radius = 10.0
//     ..progressColor = Colors.yellow
//     ..backgroundColor = Colors.green
//     ..indicatorColor = Colors.yellow
//     ..textColor = Colors.yellow
//     ..maskColor = Colors.blue.withOpacity(0.5)
//     ..userInteractions = false
//     ..dismissOnTap = false
//     ..customAnimation = EasyLoadingCustomAnimation();
// }

void main() async {
  Fimber.plantTree(DebugTree(useColors: true));
  Fimber.plantTree(DebugTree.elapsed());

  WidgetsFlutterBinding.ensureInitialized();

  FlutterCryptography.enable();
  await Hive.initFlutter();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false));

  await StatusBarControl.setHidden(false, animation: StatusBarAnimation.FADE);
  await StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);

  OneSignalManager.init();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) => runApp(MyApp()));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false
    ..customAnimation = EasyLoadingCustomAnimation();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.transparent,
      theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          dividerColor: Colors.transparent,
          brightness: Brightness.light,
          extensions: [ThemeExtensions.light]),
      darkTheme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          dividerColor: Colors.transparent,
          brightness: Brightness.dark,
          extensions: [ThemeExtensions.dark]),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      locale: LMSLocale.enUS,
      initialBinding: AppGlobalBindings(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    );
  }
}

class SignalRService {
  final hubConnection = HubConnectionBuilder()
      .withUrl("https://api.ufl.essoft.vn/mobile/api/ChatBox/Send")
      .build();

  SignalRService() {
    _configureSignalR();
  }

  void _configureSignalR() {
    hubConnection.on("ReceiveMessage", _handleReceiveMessage);
    hubConnection.start().catchError((error) {
      print("CONNECTION FAILED: $error");
    });
  }

  void _handleReceiveMessage(List<dynamic>? parameters) {
    if (parameters != null && parameters.isNotEmpty) {
      print("Received message: ${parameters[0]}");
    }
  }

  Future<void> sendMessage(String user, String message) async {
    try {
      await hubConnection.invoke("SendMessage", args: <Object>[user, message]);
    } catch (error, stackTrace) {
      print("Error sending message: $error");
      print("Stack trace: $stackTrace");
    }
  }
}




