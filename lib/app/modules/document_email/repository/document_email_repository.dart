



import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';
import '../model/all_email_request.dart';
import '../model/all_email_response.dart';

abstract class DocumentEmailRepository {
  Future<Result<BaseResponseObject<List<AllEmailResponse?>?>, NetworkError>> getEmailList(
      AllEmailRequest? model  );

}