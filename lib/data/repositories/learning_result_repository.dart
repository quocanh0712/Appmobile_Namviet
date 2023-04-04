// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/all_courses_points_object/all_courses_points_object.dart';
import 'package:ftu_lms/data/bean/semester_point_object/semester_point_object.dart';
import 'package:ftu_lms/data/bean/single_course_points_object/single_course_points_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/requests/learning_result_request_params/learning_result_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class LearningResultRepository {
  Future<Result<BaseResponseObject<SemesterPointObject?>, NetworkError>> retrieveSemesterPoints(
      LearningResultRequestParams? params);
  Future<Result<BaseResponseObject<AllCoursesPointsObject?>, NetworkError>>
      retrieveAllCoursesPoints(LearningResultRequestParams? params);
  Future<Result<BaseResponseObject<List<SingleCoursePointsObject?>?>, NetworkError>>
      retrieveSingleCoursePoints(LearningResultRequestParams? params);
}
