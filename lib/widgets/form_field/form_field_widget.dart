// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'dart:io';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:ftu_lms/utils/date_time_utils.dart';
import 'package:ftu_lms/utils/utils.dart';
import 'package:ftu_lms/widgets/date_input_form.dart';
import 'package:ftu_lms/widgets/form_field/form_field_data.dart';
import 'package:ftu_lms/widgets/view_drop_down.dart';
import 'package:get/get.dart';

class FormFieldWidget extends StatefulWidget {
  final FormFieldData formFieldData;

  final Function(FormFieldData data) onDataChange;

  const FormFieldWidget({super.key, required this.formFieldData, required this.onDataChange});

  @override
  State<StatefulWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  late FormFieldData _formFieldData;
  String? modelRadioSelected;

  @override
  void initState() {
    _formFieldData = widget.formFieldData;
    modelRadioSelected =
        _formFieldData.values?.firstWhere((element) => element.selected == true).value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget form;
    switch (_formFieldData.type?.getFormType()) {
      case FormType.checkBoxGroup:
        form = getCheckBoxGroupWidget(context);
        break;
      case FormType.dateField:
        form = getDateFieldWidget(context);
        break;
      case FormType.fileUpload:
        form = getFileUploadWidget(context);
        break;
      case FormType.radioGroup:
        form = getRadioGroupWidget(context);
        break;
      case FormType.selectForm:
        form = getSelectFormWidget(context);
        break;
      case FormType.textArea:
        form = getTextAreaWidget(context);
        break;
      default:
        form = getTextFieldWidget(context);
    }
    return form;
  }

  Widget title() {
    return Row(
      children: [
        Expanded(
          child: Text(_formFieldData.label ?? Constants.EMPTY,
              style: context.themeExtensions.paragraphSemiBold.copyWith(
                color: context.themeExtensions.semiGrey,
              )),
        ),
        if (_formFieldData.required == true) ...{
          Text("(*)",
              style: context.themeExtensions.paragraph.copyWith(
                color: context.themeExtensions.red,
              )),
        }
      ],
    );
  }

  Widget getCheckBoxGroupWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        for (int index = 0; index < (_formFieldData.values?.length ?? 0); index++)
          itemCheckBox(index)
      ],
    );
  }

  Widget itemCheckBox(int index) {
    ValueModel? model = _formFieldData.values?[index];
    if (model == null) return Container();
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: Text(
          model.label ?? Constants.EMPTY,
          style: context.themeExtensions.paragraph.copyWith(
            color: context.themeExtensions.textColor,
          ),
        )),
        const SizedBox(
          width: 8,
        ),
        Checkbox(
          value: model.selected == true,
          checkColor: context.themeExtensions.white,
          activeColor: context.themeExtensions.darkGreen,
          onChanged: (bool? value) {
            setState(() {
              List<ValueModel>? list = _formFieldData.values?.toList();
              list?[index] = list[index].copyWith(selected: value);
              _formFieldData = _formFieldData.copyWith(values: list);
              widget.onDataChange.call(_formFieldData);
            });
          },
        ),
      ],
    );
  }

  Widget getDateFieldWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        DateInputForm(
            initDate: _formFieldData.value == null
                ? null
                : DateTimeUtils.convertFromDateString(
                    dateString: _formFieldData!.value!, dateFormat: dateYMDSlash),
            onDataChange: (date) {
              _formFieldData = _formFieldData.copyWith(
                  value: date == null ? null : DateTimeUtils.formatDateTime(date, dateYMDSlash));
              widget.onDataChange.call(_formFieldData);
            }),
      ],
    );
  }

  Widget getFileUploadWidget(BuildContext context) {
    bool isMultiChoose = _formFieldData.multiple == true;
    List<Widget> listFileName = List.empty(growable: true);
    if (_formFieldData.values?.isNotEmpty == true) {
      List<Widget> list = _formFieldData.values?.mapList((ValueModel data) => Text(
                data.label?.split('/').last ?? Constants.EMPTY,
                style: context.themeExtensions.subTex
                    .copyWith(color: context.themeExtensions.textColor),
              )) ??
          [];
      listFileName.addAll(list);
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: context.themeExtensions.white,
            border: Border.all(color: context.themeExtensions.textGrey, width: 1),
          ),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  if (isMultiChoose) {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles(allowMultiple: true);

                    if (result != null) {
                      List<File> files =
                          result.paths.map((path) => File(path ?? Constants.EMPTY)).toList();
                      setState(() {
                        List<ValueModel> valueList = files.mapList((f) {
                          String base64 = Utils.convertIntoBase64(f);
                          return ValueModel(label: f.path.split('/').last, value: base64);
                        });
                        _formFieldData = _formFieldData.copyWith(values: valueList);
                        widget.onDataChange.call(_formFieldData);
                      });
                    }
                  } else {
                    FilePickerResult? result = await FilePicker.platform.pickFiles();
                    if (result != null) {
                      if (result.files.single.path?.isNotEmpty == true) {
                        File file = File(result.files.single.path!);
                        String base64 = Utils.convertIntoBase64(file);
                        ValueModel value =
                            ValueModel(label: file.path.split('/').last, value: base64);
                        setState(() {
                          _formFieldData = _formFieldData.copyWith(values: [value]);
                          widget.onDataChange.call(_formFieldData);
                        });
                      } else {
                        EasyLoading.showToast(LocaleKeys.commonErrorMessage.tr,
                            duration: ToastDuration.LENGTH_SHORT,
                            toastPosition: EasyLoadingToastPosition.bottom);
                      }
                    }
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: context.themeExtensions.white,
                    border: Border.all(color: context.themeExtensions.textGrey, width: 1),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    LocaleKeys.chooseFileButton.tr,
                    style: context.themeExtensions.subTex
                        .copyWith(color: context.themeExtensions.textColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ...listFileName,
            ],
          ),
        )
      ],
    );
  }

  Widget getRadioGroupWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        for (int index = 0; index < (_formFieldData.values?.length ?? 0); index++) itemRadio(index)
      ],
    );
  }

  Widget itemRadio(int index) {
    ValueModel? model = _formFieldData.values?[index];
    if (model == null) return Container();
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: Text(
          model.label ?? Constants.EMPTY,
          style: context.themeExtensions.paragraph.copyWith(
            color: context.themeExtensions.textColor,
          ),
        )),
        const SizedBox(
          width: 8,
        ),
        Radio<String?>(
          value: _formFieldData.values?[index].value,
          activeColor: context.themeExtensions.darkGreen,
          onChanged: (value) {
            List<ValueModel> list = List.empty(growable: true)
              ..addAll(_formFieldData.values ?? []);
            for (int i = 0; i < list.length; i++) {
              list[i] = list[i].copyWith(selected: list[i].value == value);
            }
            _formFieldData = _formFieldData.copyWith(values: list);
            widget.onDataChange.call(_formFieldData);
            setState(() {
              modelRadioSelected = value;
            });
          },
          groupValue: modelRadioSelected,
        ),
      ],
    );
  }

  Widget getSelectFormWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        DropDownView(
          defaultData:
              _formFieldData.values?.firstWhere((element) => element.selected == true).label,
          dataList: _formFieldData.values?.mapList((element) => element.label ?? Constants.EMPTY),
          onChanged: (text) {
            List<ValueModel> list = List.empty(growable: true)
              ..addAll(_formFieldData.values ?? []);
            for (int i = 0; i < list.length; i++) {
              list[i] = list[i].copyWith(selected: list[i].value == text);
            }
            _formFieldData = _formFieldData.copyWith(values: list);
            widget.onDataChange.call(_formFieldData);
          },
        )
      ],
    );
  }

  Widget getTextAreaWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: TextEditingController(text: _formFieldData.value),
          maxLines: 3,
          decoration: InputDecoration(
            hintText: LocaleKeys.hintInputText.tr,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: context.themeExtensions.textGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: context.themeExtensions.darkGreen),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onChanged: (text) {
            _formFieldData = _formFieldData.copyWith(value: text);
            widget.onDataChange.call(_formFieldData);
          },
        )
      ],
    );
  }

  Widget getTextFieldWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: TextEditingController(text: _formFieldData.value),
          maxLines: 1,
          decoration: InputDecoration(
            hintText: LocaleKeys.hintInputText.tr,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: context.themeExtensions.textGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: context.themeExtensions.darkGreen),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onChanged: (text) {
            _formFieldData = _formFieldData.copyWith(value: text);
            widget.onDataChange.call(_formFieldData);
          },
        )
      ],
    );
  }
}
