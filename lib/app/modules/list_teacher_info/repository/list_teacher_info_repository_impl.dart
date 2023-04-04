// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_request.dart';
import 'package:ftu_lms/app/modules/list_teacher_info/model/teacher_info_response.dart';
import 'package:ftu_lms/data/remote/clients/list_teacher_info_client.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/layers/network_executor.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import 'list_teacher_info_repository.dart';

class ListTeacherInfoRepositoryImpl extends ListTeacherInfoRepository {
  @override
  Future<Result<BaseResponseObject<List<TeacherInfoResponse?>?>, NetworkError>> getListTeacherInfo(
      TeacherInfoRequest? model) {
    return NetworkExecutor.execute<BaseResponseObject<List<TeacherInfoResponse?>?>,
            BaseResponseObject<List<TeacherInfoResponse?>?>>(
        route: ListTeacherInfoClient.getListTeacherInfo(model),
        responseType: const BaseResponseObject<List<TeacherInfoResponse?>?>());
  }
}
