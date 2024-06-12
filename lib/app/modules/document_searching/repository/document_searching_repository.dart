



import 'package:ftu_lms/app/modules/document_searching/model/document_searching_request.dart';
import 'package:ftu_lms/app/modules/document_searching/model/document_searching_response.dart';

import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';

abstract class DocumentSearchingRepository {
  Future<Result<BaseResponseObject<List<DocumentSearchingResponse?>?>, NetworkError>> getDocumentList(
      DocumentSearchingRequest? model  );
  Future<Result<BaseResponseObject<int?>, NetworkError>> updateStatus(
      int? id, String? idUser);
}