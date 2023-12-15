// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_outstanding_actitvity.freezed.dart';
part 'home_outstanding_actitvity.g.dart';

@freezed
class HomeOutstandingActitvity with _$HomeOutstandingActitvity {
  factory HomeOutstandingActitvity({
    int? id,
    String? image,
    String? title,
    String? content,
  }) = _HomeOutstandingActitvity;

  factory HomeOutstandingActitvity.fromJson(Map<String, dynamic> json) =>
      _$HomeOutstandingActitvityFromJson(json);
}
