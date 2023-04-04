// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/item_scientific_research/model/item_scientific_research_request.dart';
import 'package:ftu_lms/app/modules/scientific_research/model/scientific_research_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'scientific_research_client.freezed.dart';

@freezed
class ScientificResearchClient extends BaseClientGenerator with _$ScientificResearchClient {
  ScientificResearchClient._() : super();

  factory ScientificResearchClient.getScientificResearchList(ScientificResearchRequest? model) =
      _ScientificResearchList;

  factory ScientificResearchClient.getDetailItemScientificResearch(
      ItemScientificResearchRequest? model) = _ItemScientificResearch;

  @override
  String get baseURL => '${super.baseURL}/NCKH';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(
        getScientificResearchList: (model) => model?.toJson() ?? {},
        getDetailItemScientificResearch: (model) => model?.toJson() ?? {},
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
      getDetailItemScientificResearch: (data) => '/GetAllByType',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
