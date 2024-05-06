

import 'package:ftu_lms/app/modules/seminar/model/seminar_detail_request.dart';
import 'package:ftu_lms/app/modules/seminar/model/seminar_response.dart';
import 'package:ftu_lms/app/modules/seminar/repository/seminar_repository.dart';
import 'package:ftu_lms/data/remote/clients/seminar_client.dart';

import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';
import '../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../data/remote/wrappers/result.dart';

class SeminarRepositoryImpl extends SeminarRepository {
  @override
  Future<Result<BaseResponseObject<List<SeminarResponse?>?>, NetworkError>> getSeminarList(
      SeminarDetailRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<SeminarResponse?>?>,
        BaseResponseObject<List<SeminarResponse?>?>>(
        route: SeminarClient.getSeminarList(model),
        responseType: const BaseResponseObject<List<SeminarResponse?>?>());
  }
}