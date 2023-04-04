// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_controller.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/bean/photo_object.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/repository/photo_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';
import 'package:get/get.dart';

class InfiniteListSampleController extends BaseInfiniteListController<PhotoObject> {
  final PhotoRepository photoRepo = Get.find();

  @override
  Future<Result<BaseResponseObject<List<PhotoObject?>?>, Exception>> retrieveDataFromService(
      int? pageNumber) {
    // TODO: implement retrieveDataFromService
    throw UnimplementedError();
  }

  // @override
  // Future<Result<List<BaseResponseObject<PhotoObject?>?>, Exception>> retrieveDatasFromService(
  //         int? pageNumber) =>
  //     photoRepo.loadPhoto(pageNumber);
}
