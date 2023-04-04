// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:fimber/fimber.dart';
import 'package:ftu_lms/data/bean/app_configurations.dart';
import 'package:ftu_lms/data/local/storage_keys.dart';
import 'package:ftu_lms/data/repositories/app_configs_repository.dart';
import 'package:hive/hive.dart';

class AppConfigurationsRepositoryImpl extends AppConfigsRepository {
  @override
  Future<AppConfigurations?> retrieveAppConfigurations() async {
    Fimber.d("Future<AppConfigurations?> retrieveAppConfigurations()");
    var box = await Hive.openBox<AppConfigurations>(StorageKeys.appConfigBoxName);
    return box.get(StorageKeys.appConfigBoxName);
  }

  @override
  Future saveAppConfigurations(AppConfigurations? appConfigurations) async {
    Fimber.d("saveAppConfigurations(AppConfigurations? appConfigurations)");
    if (appConfigurations == null) return;
    var box = await Hive.openBox<AppConfigurations>(StorageKeys.appConfigBoxName);
    box.put(StorageKeys.appConfigBoxName, appConfigurations);
  }
}
