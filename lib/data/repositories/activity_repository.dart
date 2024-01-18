import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';
import 'package:ftu_lms/data/remote/wrappers/network_error.dart';
import 'package:ftu_lms/data/remote/wrappers/result.dart';

import '../bean/activity_response_object/activity_response_object.dart';

abstract class ActivityRepository {
  Future<Result<BaseResponseObject<ActivityResponseObject?>, NetworkError>> retrieveData();
}