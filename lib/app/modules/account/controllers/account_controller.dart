// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:get/get.dart';

class AccountController extends BaseInfiniteListController {
  @override
  Future<Result<BaseResponseObject<List?>, Exception>> retrieveDataFromService(int? pageNumber) {
    // TODO: implement retrieveDataFromService
    throw UnimplementedError();
  }
}
