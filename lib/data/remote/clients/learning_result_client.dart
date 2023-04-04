// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/remote/requests/learning_result_request_params/learning_result_request_params.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'learning_result_client.freezed.dart';

@freezed
class LearningResultClient extends BaseClientGenerator with _$LearningResultClient {
  LearningResultClient._() : super();
  factory LearningResultClient.retriveSemsterPoint(LearningResultRequestParams? params) =
      _SemesterPoint;
  factory LearningResultClient.retriveAllCoursesPoints(LearningResultRequestParams? params) =
      _AllCoursesPoints;
  factory LearningResultClient.retriveSingleCoursePoints(LearningResultRequestParams? params) =
      _SingleCoursePoints;

  @override
  String get baseURL => '${super.baseURL}/KetQuaHocTap';

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      retriveSemsterPoint: (params) => '/GetAll',
      retriveAllCoursesPoints: (params) => '/GetAllMonHoc',
      retriveSingleCoursePoints: (params) => '/GetAllDiem',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () => null,
    );
  }

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
      retriveSemsterPoint: (params) => params?.toJson() ?? {},
      retriveAllCoursesPoints: (params) => params?.toJson() ?? {},
      retriveSingleCoursePoints: (params) => params?.toJson() ?? {},
      orElse: () => {},
    );
  }
}
