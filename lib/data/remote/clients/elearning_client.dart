// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/elearning/model/elearning_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'elearning_client.freezed.dart';

@freezed
class ELearningClient extends BaseClientGenerator with _$ELearningClient {
  ELearningClient._() : super();

  factory ELearningClient.getELearningList(ELearningRequest? model) = _ELearningList;

  @override
  String get baseURL => '${super.baseURL}/LMS';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(orElse: () => model?.toJson() ?? {});
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
