// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/infiniteListSample/data/bean/photo_object.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/photo_client.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/repository/photo_repository.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

class PhotoRepositoryImpl extends PhotoRepository {
  @override
  Future<Result<List<BaseResponseObject<PhotoObject?>?>, Exception>> loadPhoto(int? pageNumber) {
    return NetworkExecutor.execute<BaseResponseObject<PhotoObject?>,
            List<BaseResponseObject<PhotoObject?>?>>(
        route: PhotoClient.loadPhotos(pageNumber),
        responseType: const BaseResponseObject<PhotoObject?>());
  }
}
