// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/app/modules/create_new_certificate/model/certificate_insert_request.dart';
import 'package:ftu_lms/app/modules/list_certificates/model/certificate_request.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../interfaces/base_client_generator.dart';

part 'category_config_client.freezed.dart';

@freezed
class CategoryConfigClient extends BaseClientGenerator with _$CategoryConfigClient {
  CategoryConfigClient._() : super();

  factory CategoryConfigClient.getAcademicRank() = _AcademicRankConfig;

  factory CategoryConfigClient.getDegree() = _DegreeConfig;

  factory CategoryConfigClient.getTitle() = _TitleConfig;

  factory CategoryConfigClient.getPosition() = _PositionConfig;

  @override
  String get baseURL => '${super.baseURL}/DanhMuc';

  @override
  Map<String, dynamic> get body {
    return maybeWhen(orElse: () => {});
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
      getAcademicRank: () => '/GetAllHocHam',
      getDegree: () => '/GetAllHocVi',
      getTitle: () => '/GetAllChucDanh',
      getPosition: () => '/GetAllChucVu',
      orElse: () => '/GetAll',
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(orElse: () => null);
  }
}
