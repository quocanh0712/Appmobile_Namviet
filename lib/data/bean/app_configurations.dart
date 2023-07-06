// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// ignore_for_file: depend_on_referenced_packages

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/local/storage_keys.dart';
import 'package:hive/hive.dart';

part 'app_configurations.freezed.dart';
part 'app_configurations.g.dart';

@freezed
@HiveType(typeId: StorageKeys.appConfigurationHiveTypeId)
class AppConfigurations with _$AppConfigurations {
  factory AppConfigurations({
    @HiveField(0) int? latestSyncedTime,
    @HiveField(4) String? accessToken,
    @HiveField(5) String? refreshToken,
    @HiveField(6) String? baseUrl,
    @HiveField(7) int? idDonVi,
  }) = _AppConfigurations;

  factory AppConfigurations.fromJson(Map<String, dynamic> json) =>
      _$AppConfigurationsFromJson(json);
}
