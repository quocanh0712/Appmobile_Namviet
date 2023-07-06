// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import '../../../app/environment_configurations.dart';
import '../../repositories/user_repository.dart';
import 'package:ftu_lms/data/bean/app_configurations.dart';
import 'package:ftu_lms/data/repositories/app_configs_repository.dart';

abstract class BaseClientGenerator {
  BaseClientGenerator();
  AppConfigurations? _appConfigs;
  final _appConfigsRepo = Get.find<AppConfigsRepository>();
  String get path;

  String get method;
  String setUrl = "";
  String get baseURL => setUrl;

  Future<Map<String, dynamic>> defaultBody() async {
    UserRepository userRepo = Get.find();
    UserObject? userObject = await userRepo.retrieveUserInfo();
    _appConfigs = await _appConfigsRepo.retrieveAppConfigurations();
    int? idDonVi = _appConfigs?.idDonVi;
    switch (idDonVi) {
      case 1:
        setUrl = EnvironmentConfig.BASE_URL;
        break;
      case 2:
        setUrl = EnvironmentConfig.BASE_URL_TUAF;
        break;
      case 3:
        setUrl = EnvironmentConfig.BASE_URL_NUAE;
        break;
      case 4:
        setUrl = EnvironmentConfig.BASE_URL_HUPES;
        break;
      case 5:
        setUrl = EnvironmentConfig.BASE_URL_IS;
        break;
      default:
        break;
    }
    //Fimber.d("baseURL1(): ${baseURL}");
    if (userObject == null) return {};
    return {
      "iduser": userObject.iduser,
      "role": userObject.role,
      "nowDate": Jiffy().format("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"),
    };
  }

  Map<String, dynamic> get body;

  Map<String, dynamic>? get queryParameters;

  Map<String, dynamic> get header => {"Content-Type": "application/json"};

  int? get sendTimeout => 30000;

  int? get receiveTimeOut => 30000;
}
