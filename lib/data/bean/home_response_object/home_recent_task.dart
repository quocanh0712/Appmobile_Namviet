// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_recent_task.freezed.dart';
part 'home_recent_task.g.dart';

@freezed
class HomeRecentTask with _$HomeRecentTask {
  factory HomeRecentTask({
    int? id,
    String? tasktime,
    String? content,
  }) = _HomeRecentTask;

  factory HomeRecentTask.fromJson(Map<String, dynamic> json) => _$HomeRecentTaskFromJson(json);
}
