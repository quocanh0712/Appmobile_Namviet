// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/app_configurations.dart';

abstract class AppConfigsRepository {
  Future saveAppConfigurations(AppConfigurations? appConfigurations);

  Future<AppConfigurations?> retrieveAppConfigurations();
}
