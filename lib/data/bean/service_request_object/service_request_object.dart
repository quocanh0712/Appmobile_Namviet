// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';

part 'service_request_object.freezed.dart';
part 'service_request_object.g.dart';

@freezed
@genJsonT4ThisOne
class ServiceRequestObject with _$ServiceRequestObject {
  factory ServiceRequestObject({
    String? id,
    String? idForm,
    String? formname,
    DateTime? updateTime,
    int? status,
    List<FormFieldData>? listForm,
  }) = _ServiceRequestObject;

  factory ServiceRequestObject.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestObjectFromJson(json);
}
