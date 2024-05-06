



import 'package:ftu_lms/app/modules/seminar/model/seminar_detail_request.dart';
import 'package:ftu_lms/app/modules/seminar/model/seminar_response.dart';

import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';

abstract class SeminarRepository {
  Future<Result<BaseResponseObject<List<SeminarResponse?>?>, NetworkError>> getSeminarList(
      SeminarDetailRequest? model  );
}