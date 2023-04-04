// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/generated/locales.g.dart';
import 'package:get/get.dart';

extension DoubleExt on double? {
  String? retrieveSRank4() {
    if (0.0 < (this ?? 0.0) && (this ?? 0.0) < 1.0) return LocaleKeys.tenuity.tr;
    if (1.0 <= (this ?? 0.0) && (this ?? 0.0) < 2.0) return LocaleKeys.weak.tr;
    if (2.0 <= (this ?? 0.0) && (this ?? 0.0) < 2.5) return LocaleKeys.medium.tr;
    if (2.5 <= (this ?? 0.0) && (this ?? 0.0) < 3.2) return LocaleKeys.enough.tr;
    if (3.2 <= (this ?? 0.0) && (this ?? 0.0) < 3.6) return LocaleKeys.good.tr;
    if (3.6 <= (this ?? 0.0) && (this ?? 0.0) <= 4.0) return LocaleKeys.excellent.tr;
    return null;
  }

  String? retrieveSRank10() {
    if (0.0 < (this ?? 0.0) && (this ?? 0.0) < 4.0) return LocaleKeys.tenuity.tr;
    if (4.0 <= (this ?? 0.0) && (this ?? 0.0) <= 4.9) return LocaleKeys.weak.tr;
    if (5.0 <= (this ?? 0.0) && (this ?? 0.0) <= 5.4) return LocaleKeys.mediumAndWeak.tr;
    if (5.5 <= (this ?? 0.0) && (this ?? 0.0) <= 6.4) return LocaleKeys.medium.tr;
    if (6.5 <= (this ?? 0.0) && (this ?? 0.0) <= 6.9) return LocaleKeys.mediumAndEnough.tr;
    if (7.0 <= (this ?? 0.0) && (this ?? 0.0) <= 7.9) return LocaleKeys.enough.tr;
    if (8.0 <= (this ?? 0.0) && (this ?? 0.0) <= 8.4) return LocaleKeys.good.tr;
    if (8.5 <= (this ?? 0.0) && (this ?? 0.0) <= 10.0) return LocaleKeys.excellent.tr;
    return null;
  }
}
