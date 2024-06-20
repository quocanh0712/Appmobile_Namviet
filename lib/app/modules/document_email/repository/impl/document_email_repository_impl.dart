


import 'package:ftu_lms/app/modules/document_email/model/delete_email_request.dart';
import 'package:ftu_lms/app/modules/document_email/model/restore_email_request.dart';
import 'package:ftu_lms/app/modules/document_email/repository/document_email_repository.dart';

import '../../../../../data/remote/clients/document_searching_client.dart';
import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';
import '../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../data/remote/wrappers/result.dart';
import '../../model/all_email_request.dart';
import '../../model/all_email_response.dart';

class DocumentEmailRepositoryImpl extends DocumentEmailRepository {

  @override
  Future<Result<BaseResponseObject<List<AllEmailResponse?>?>,
      NetworkError>> getEmailList(AllEmailRequest? model) {
    return NetworkExecutor.execute<
        BaseResponseObject<List<AllEmailResponse?>?>,
        BaseResponseObject<List<AllEmailResponse?>?>>(
        route: DocumentSearchingClient.getEmailList(model),
        responseType: const BaseResponseObject<
            List<AllEmailResponse?>?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>,
      NetworkError>> deleteEmail(DeleteEmailRequest? model) {
    return NetworkExecutor.execute<
        BaseResponseObject<int?>,
        BaseResponseObject<int?>>(
        route: DocumentSearchingClient.deleteEmail(model),
        responseType: const BaseResponseObject<
            int?>());
  }

  @override
  Future<Result<BaseResponseObject<int?>,
      NetworkError>> restoreEmail(RestoreEmailRequest? model) {
    return NetworkExecutor.execute<
        BaseResponseObject<int?>,
        BaseResponseObject<int?>>(
        route: DocumentSearchingClient.restoreEmail(model),
        responseType: const BaseResponseObject<
            int?>());
  }


}