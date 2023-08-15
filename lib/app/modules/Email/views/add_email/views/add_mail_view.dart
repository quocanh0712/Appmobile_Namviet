// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base_appbar_view.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import '../../../../../../widgets/form_field/form_field_widget.dart';
import '../controllers/add_email_controller.dart';
import 'package:dart_extensions/dart_extensions.dart';

class AddEmailView extends BaseAppBarView<AddEmailController> {
  AddEmailView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    List<Widget> listWidget = List.empty(growable: true);
    controller.addEmailResponseResponse.listForm
        ?.forEachIndexed((element, index) {
      listWidget.add(Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          FormFieldWidget(
            onDataChange: (data) => controller.updateFormFieldData(index, data),
            formFieldData: element,
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ));
    });
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: listWidget,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => controller.sendFormRequest(),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.butGradientBg.path),
                      fit: BoxFit.cover)),
              child: Align(
                  alignment: FractionalOffset.center,
                  child: AutoSizeText(
                    LocaleKeys.update.tr,
                    style: Get.context?.themeExtensions.paragraph
                        .copyWith(color: Get.context?.themeExtensions.white),
                  )),
            ),
          )
        ],
      ),
    );
  }

  @override
  String? get titleAppBar => controller.getTitle();
}
