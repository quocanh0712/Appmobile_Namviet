


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


}