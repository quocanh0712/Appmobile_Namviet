



import 'package:ftu_lms/app/modules/document_searching/model/document_searching_request.dart';
import 'package:ftu_lms/app/modules/document_searching/model/document_searching_response.dart';
import 'package:ftu_lms/app/modules/document_searching/repository/document_searching_repository.dart';

import '../../../../../data/remote/clients/document_searching_client.dart';
import '../../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../../data/remote/layers/network_executor.dart';
import '../../../../../data/remote/wrappers/network_error.dart';
import '../../../../../data/remote/wrappers/result.dart';

class DocumentSearchingRepositoryImpl extends DocumentSearchingRepository {

  @override
  Future<Result<BaseResponseObject<List<DocumentSearchingResponse?>?>, NetworkError>> getDocumentList(
      DocumentSearchingRequest? model  ) {
    return NetworkExecutor.execute<BaseResponseObject<List<DocumentSearchingResponse?>?>,
        BaseResponseObject<List<DocumentSearchingResponse?>?>>(
        route: DocumentSearchingClient.getDocumentList(model),
        responseType: const BaseResponseObject<List<DocumentSearchingResponse?>?>());
  }


}