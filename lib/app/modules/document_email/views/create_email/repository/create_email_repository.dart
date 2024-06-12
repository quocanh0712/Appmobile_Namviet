



import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_request.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/create_email_response.dart';

import '../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../../data/remote/wrappers/result.dart';

abstract class CreateEmailRepository {
  Future<Result<BaseResponseObject<int?>, NetworkError>> sendEmail(
      CreateEmailResponse? model);

  Future<Result<BaseResponseObject<List<AllUserResponse?>?>, NetworkError>> getAllUser(
      AllUserRequest? model  );

}