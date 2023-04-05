// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

class EnvironmentConfig {
  static const APP_NAME =
      String.fromEnvironment('DART_DEFINES_APP_NAME', defaultValue: "Essoft");
  static const APP_SUFFIX = String.fromEnvironment('DART_DEFINES_APP_SUFFIX');
  static const BASE_URL = String.fromEnvironment('DART_DEFINES_BASE_URL',
      defaultValue: "https://demo.api.essoft.vn/mobile/api");
}
