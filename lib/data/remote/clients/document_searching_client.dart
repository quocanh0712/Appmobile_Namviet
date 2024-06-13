


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/all_user_request.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/models/create_email_response.dart';
import 'package:ftu_lms/data/remote/interfaces/base_client_generator.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../app/modules/document_email/model/all_email_request.dart';
import '../../../app/modules/document_searching/model/document_searching_request.dart';

part 'document_searching_client.freezed.dart';



@freezed
class DocumentSearchingClient extends BaseClientGenerator with _$DocumentSearchingClient {
  DocumentSearchingClient._() : super();

  factory DocumentSearchingClient.getDocumentList(DocumentSearchingRequest? model) = _DocumentSearchingClient;
  factory DocumentSearchingClient.sendEmail(CreateEmailResponse? model) = _SendEmail;
  factory DocumentSearchingClient.getAllUser(AllUserRequest? model) = _GetAllRequest;
  factory DocumentSearchingClient.updateStatus(int? id , String? idUser) = _UpdateStatus;
  factory DocumentSearchingClient.getEmailList(AllEmailRequest? model) = _GetAllEmail;

  @override
  String get baseURL => '${super.baseURL}/QuanLyVanBan';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getDocumentList: (data) => data?.toJson() ?? {},
        sendEmail: (data) => data?.toJson() ??{},
        getAllUser: (data) => data?.toJson() ??{},
        getEmailList: (data) => data?.toJson() ??{},
        updateStatus: (id, idUser) =>
        {'id': id, 'idUser': idUser},

        orElse: () => {});
  }

  @override
  String get method {
    return maybeWhen<String>(
      orElse: () => RequestMethods.post.name,
    );
  }

  @override
  String get path {
    return maybeWhen<String>(
      getDocumentList: (data) => '/GetAllVBPPSearch',
      sendEmail: (data) => '/InsertVBGui',
      getAllUser: (data) => '/GetAllUser',
      updateStatus: (id, idUser) => '/UpdateTrangThaiVBPP',
      getEmailList: (data) => '/GetAllVBTraoDoi',
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}