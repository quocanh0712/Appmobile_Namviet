// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/create_new_certificate/model/certificate_insert_request.dart';
import 'package:ftu_lms/app/modules/list_certificates/model/certificate_request.dart';
import 'package:ftu_lms/app/modules/reward_discipline/model/reward_discipline_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'discipline_client.freezed.dart';

@freezed
class DisciplineClient extends BaseClientGenerator with _$DisciplineClient {
  DisciplineClient._() : super();

  factory DisciplineClient.getDisciplineList(RewardDisciplineRequest? model) = _DisciplineClient;

  @override
  String get baseURL => '${super.baseURL}/KyLuat';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(getDisciplineList: (model) => model?.toJson() ?? {}, orElse: () => {});
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
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
