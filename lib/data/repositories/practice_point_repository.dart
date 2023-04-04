// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/practice_point_detail_response_object/practice_point_detail_response_object.dart';
import 'package:ftu_lms/data/bean/practice_point_response_object/practice_point_response_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/requests/practice_point_request_params/practice_point_request_params.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class PracticePointRepository {
  Future<Result<BaseResponseObject<PracticePointResponseObject?>, NetworkError>> getAll(
      PracticePointRequestParams? params);
  Future<Result<BaseResponseObject<List<PracticePointDetailResponseObject?>?>, NetworkError>>
      getChiTiet(PracticePointRequestParams? params);
}
