// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_recent_actitvity.freezed.dart';
part 'home_recent_actitvity.g.dart';

@freezed
class HomeRecentActitvity with _$HomeRecentActitvity {
  factory HomeRecentActitvity({
    int? id,
    String? image,
    String? title,
    String? content,
  }) = _HomeRecentActitvity;

  factory HomeRecentActitvity.fromJson(Map<String, dynamic> json) =>
      _$HomeRecentActitvityFromJson(json);
}
