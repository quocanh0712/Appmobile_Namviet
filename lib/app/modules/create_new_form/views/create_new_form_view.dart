// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/create_new_form/controllers/create_new_form_controller.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/form_field/form_field_widget.dart';
import 'package:get/get.dart';

class CreateNewFormView extends BaseAppBarView<CreateNewFormController> {
  CreateNewFormView({Key? key}) : super(key: key);

  @override
  Widget child(BuildContext context) {
    List<Widget> listWidget = List.empty(growable: true);
    controller.documentFormResponse.listForm?.forEachIndexed((element, index) {
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
          controller.isCreateForm
              ? InkWell(
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
                          LocaleKeys.requestTitleButton.tr,
                          style: Get.context?.themeExtensions.paragraph
                              .copyWith(color: Get.context?.themeExtensions.white),
                        )),
                  ),
                )
              : controller.documentFormResponse.status == 2
                  ? const SizedBox()
                  : Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () => controller.deleteFormRequest(),
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
                                  LocaleKeys.delete.tr,
                                  style: Get.context?.themeExtensions.paragraph
                                      .copyWith(color: Get.context?.themeExtensions.white),
                                )),
                          ),
                        )),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: InkWell(
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
                          ),
                        )
                      ],
                    ),
        ],
      ),
    );
  }

  @override
  String? get titleAppBar => controller.getTitle();
}
