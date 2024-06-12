



import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_request.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/create_email_response.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/repository/create_email_repository.dart';

import '../../../../../../../data/remote/clients/document_searching_client.dart';
import '../../../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../../../data/remote/layers/network_executor.dart';
import '../../../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../../../data/remote/wrappers/result.dart';

class CreateEmailRepositoryImpl extends CreateEmailRepository {

  @override
  Future<Result<BaseResponseObject<int?>, NetworkError>> sendEmail(
      CreateEmailResponse? model) {
    return NetworkExecutor.execute<BaseResponseObject<int?>,
        BaseResponseObject<int?>>(
        route: DocumentSearchingClient.sendEmail(model),
        responseType: const BaseResponseObject<int?>());
  }


  @override
  Future<Result<BaseResponseObject<List<AllUserResponse?>?>, NetworkError>> getAllUser(
      AllUserRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<AllUserResponse?>?>,
        BaseResponseObject<List<AllUserResponse?>?>>(
        route: DocumentSearchingClient.getAllUser(model),
        responseType: const BaseResponseObject<List<AllUserResponse?>?>());
  }
}