// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/data/bean/home_response_object/home_request.dart';
import 'package:ftu_lms/data/bean/home_response_object/home_response_object.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

abstract class HomeRepository {
  Future<Result<BaseResponseObject<HomeResponseObject?>, NetworkError>> retrieveData( HomeRequest? model );
}
