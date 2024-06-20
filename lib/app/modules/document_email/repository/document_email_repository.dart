



import 'package:ftu_lms/app/modules/document_email/model/delete_email_request.dart';
import 'package:ftu_lms/app/modules/document_email/model/restore_email_request.dart';

import '../../../../data/remote/interfaces/base_response_object.dart';
import '../../../../data/remote/wrappers/network_error.dart';
import '../../../../data/remote/wrappers/result.dart';
import '../model/all_email_request.dart';
import '../model/all_email_response.dart';

abstract class DocumentEmailRepository {
  Future<Result<BaseResponseObject<List<AllEmailResponse?>?>, NetworkError>> getEmailList(
      AllEmailRequest? model  );


  Future<Result<BaseResponseObject<int?>, NetworkError>> deleteEmail(
      DeleteEmailRequest? model  );


  Future<Result<BaseResponseObject<int?>, NetworkError>> restoreEmail(
      RestoreEmailRequest? model  );
}