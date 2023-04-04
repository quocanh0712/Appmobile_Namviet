// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

// To parse this JSON data, do
//
//     final formFieldData = formFieldDataFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_field_data.freezed.dart';

part 'form_field_data.g.dart';

FormFieldData formFieldDataFromJson(String str) => FormFieldData.fromJson(json.decode(str));

String formFieldDataToJson(FormFieldData data) => json.encode(data.toJson());

@freezed
class FormFieldData with _$FormFieldData {
  const factory FormFieldData({
    String? type,
    bool? required,
    String? label,
    bool? toggle,
    bool? inline,
    String? name,
    bool? access,
    bool? other,
    String? value,
    List<ValueModel>? values,
    String? subtype,
    bool? multiple,
  }) = _FormFieldData;

  factory FormFieldData.fromJson(Map<String, dynamic> json) => _$FormFieldDataFromJson(json);
}

extension ParseToFormType on String {
  FormType getFormType() {
    switch (this) {
      case checkBoxGroupType:
        return FormType.checkBoxGroup;
      case dateFieldType:
        return FormType.dateField;
      case fileUploadType:
        return FormType.fileUpload;
      case radioGroupType:
        return FormType.radioGroup;
      case selectFormType:
        return FormType.selectForm;
      case textAreaType:
        return FormType.textArea;
      default:
        return FormType.textField;
    }
  }
}

@freezed
class ValueModel with _$ValueModel {
  const factory ValueModel({
    String? label,
    String? value,
    bool? selected,
  }) = _ValueModel;

  factory ValueModel.fromJson(Map<String, dynamic> json) => _$ValueModelFromJson(json);
}

const checkBoxGroupType = "checkbox-group";
const dateFieldType = "date";
const fileUploadType = "file";
const radioGroupType = "radio-group";
const selectFormType = "select";
const textFieldType = "text";
const textAreaType = "textarea";

enum FormType {
  checkBoxGroup,
  dateField,
  fileUpload,
  radioGroup,
  selectForm,
  textField,
  textArea;

  String getType() {
    switch (this) {
      case checkBoxGroup:
        return checkBoxGroupType;
      case dateField:
        return dateFieldType;
      case fileUpload:
        return fileUploadType;
      case radioGroup:
        return radioGroupType;
      case selectForm:
        return selectFormType;
      case textArea:
        return textAreaType;
      default:
        return dateFieldType;
    }
  }
}
