// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_banner_url.freezed.dart';
part 'home_banner_url.g.dart';

@freezed
class HomeBannerUrl with _$HomeBannerUrl {
  factory HomeBannerUrl({
    String? imageurl,
    String? href,
  }) = _HomeBannerUrl;

  factory HomeBannerUrl.fromJson(Map<String, dynamic> json) => _$HomeBannerUrlFromJson(json);
}
