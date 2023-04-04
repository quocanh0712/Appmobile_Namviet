// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/all_courses_points_object/all_courses_points_object.dart';
import 'package:ftu_lms/data/bean/semester_point_object/semester_point_object.dart';
import 'package:ftu_lms/data/bean/single_course_points_object/single_course_points_object.dart';
import 'package:ftu_lms/data/remote/clients/learning_result_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/requests/learning_result_request_params/learning_result_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/repositories/learning_result_repository.dart';

class LearningResultRepositoryImpl extends LearningResultRepository {
  @override
  Future<Result<BaseResponseObject<SemesterPointObject?>, NetworkError>> retrieveSemesterPoints(
      LearningResultRequestParams? params) async {
    return NetworkExecutor.execute<BaseResponseObject<SemesterPointObject?>,
            BaseResponseObject<SemesterPointObject?>>(
        route: LearningResultClient.retriveSemsterPoint(
            params ?? LearningResultRequestParams(startindex: 1, length: 100)),
        responseType: const BaseResponseObject<SemesterPointObject?>());
  }

  @override
  Future<Result<BaseResponseObject<AllCoursesPointsObject?>, NetworkError>>
      retrieveAllCoursesPoints(LearningResultRequestParams? params) {
    return NetworkExecutor.execute<BaseResponseObject<AllCoursesPointsObject?>,
            BaseResponseObject<AllCoursesPointsObject?>>(
        route: LearningResultClient.retriveAllCoursesPoints(
            params ?? LearningResultRequestParams(startindex: 1, length: 100)),
        responseType: const BaseResponseObject<AllCoursesPointsObject?>());
  }

  @override
  Future<Result<BaseResponseObject<List<SingleCoursePointsObject?>?>, NetworkError>>
      retrieveSingleCoursePoints(LearningResultRequestParams? params) {
    return NetworkExecutor.execute<BaseResponseObject<List<SingleCoursePointsObject?>?>,
            BaseResponseObject<List<SingleCoursePointsObject?>?>>(
        route: LearningResultClient.retriveSingleCoursePoints(
            params ?? LearningResultRequestParams(startindex: 1, length: 100)),
        responseType:
            const BaseResponseObject<List<SingleCoursePointsObject?>?>());
  }
}
