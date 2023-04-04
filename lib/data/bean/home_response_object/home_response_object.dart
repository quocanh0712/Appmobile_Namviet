// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_banner_url.dart';
import 'home_recent_actitvity.dart';
import 'home_recent_task.dart';

part 'home_response_object.freezed.dart';
part 'home_response_object.g.dart';

@freezed
@genJsonT4ThisOne
class HomeResponseObject with _$HomeResponseObject {
  factory HomeResponseObject({
    @JsonKey(name: 'listnowtask') List<HomeRecentTask>? homeRecentTasks,
    @JsonKey(name: 'listrecentlyactitvity') List<HomeRecentActitvity>? homeRecentActitvities,
    @JsonKey(name: 'listurlbanner') List<HomeBannerUrl>? homeBannerUrls,
  }) = _HomeResponseObject;

  factory HomeResponseObject.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseObjectFromJson(json);
}
