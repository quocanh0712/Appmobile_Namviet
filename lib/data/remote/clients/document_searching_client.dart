


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/data/remote/interfaces/base_client_generator.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../app/modules/document_searching/model/document_searching_request.dart';

part 'document_searching_client.freezed.dart';



@freezed
class DocumentSearchingClient extends BaseClientGenerator with _$DocumentSearchingClient {
  DocumentSearchingClient._() : super();

  factory DocumentSearchingClient.getDocumentList(DocumentSearchingRequest? model) = _DocumentSearchingClient;


  @override
  String get baseURL => '${super.baseURL}/QuanLyVanBan';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getDocumentList: (data) => data?.toJson() ?? {},
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
      orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}