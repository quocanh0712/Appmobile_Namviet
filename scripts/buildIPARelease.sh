#!/bin/bash
set -e

fvm flutter pub get
fvm flutter pub run build_runner build --delete-conflicting-outputs
fluttergen -c pubspec.yaml
get generate locales assets/locales
git ls-files -z -- '*.dart' | xargs -0 dart format "$@" -l 99

fvm flutter build ipa --obfuscate --split-debug-info --split-per-abi \
--dart-define=DART_DEFINES_APP_NAME="FTU LMS" \
--dart-define=DART_DEFINES_BASE_URL="https://api.ufl.essoft.vn/mobile/api" \
--export-options-plist ./ios/fastlane/export_options/Release/ExportOptions.plist \
--release
