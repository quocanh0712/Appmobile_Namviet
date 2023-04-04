// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'list_teacher_info_client.freezed.dart';

@freezed
class ListTeacherInfoClient extends BaseClientGenerator with _$ListTeacherInfoClient {
  ListTeacherInfoClient._() : super();

  factory ListTeacherInfoClient.getListTeacherInfo(TeacherInfoRequest? model) =
      _ListTeacherInfoClient;

  @override
  String get baseURL => '${super.baseURL}/DanhBaCanBo';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(getListTeacherInfo: (data) => data?.toJson() ?? {}, orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
