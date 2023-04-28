#!/bin/bash
set -e

fvm flutter pub get
fvm flutter pub run build_runner build --delete-conflicting-outputs
fluttergen -c pubspec.yaml
get generate locales assets/locales
git ls-files -z -- '*.dart' | xargs -0 dart format "$@" -l 99

fvm flutter build appbundle --obfuscate --split-debug-info --split-per-abi \
--dart-define=DART_DEFINES_APP_NAME="UFL APP" \
--dart-define=DART_DEFINES_BASE_URL="https://demo.api.essoft.vn/mobile/api" \
--release
