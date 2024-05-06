

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/seminar/model/seminar_detail_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import '../interfaces/base_client_generator.dart';

part 'seminar_client.freezed.dart';

@freezed
class SeminarClient extends BaseClientGenerator with _$SeminarClient {
  SeminarClient._() : super();

  factory SeminarClient.getSeminarList(SeminarDetailRequest? model) = _SeminarClient;



  @override
  String get baseURL => '${super.baseURL}/HoiThao';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getSeminarList: (data) => data?.toJson() ?? {},
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
      getSeminarList: (data) => '/GetAll',
        orElse: () => '',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}