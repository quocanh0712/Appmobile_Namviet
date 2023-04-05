// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/data/bean/user_object/user_object.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import '../../../app/environment_configurations.dart';
import '../../repositories/user_repository.dart';

abstract class BaseClientGenerator {
  BaseClientGenerator();

  String get path;

  String get method;

  //String get baseURL => "https://demo.api.essoft.vn/mobile/api";
  //String get baseURL => "https://api.ufl.essoft.vn/mobile/api";
  String get baseURL => EnvironmentConfig.BASE_URL;

  Future<Map<String, dynamic>> defaultBody() async {
    UserRepository userRepo = Get.find();
    UserObject? userObject = await userRepo.retrieveUserInfo();
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
