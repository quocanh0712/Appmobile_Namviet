// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';

class SearchTextField extends StatefulWidget {
  final String initText;
  final String initHintText;
  final Function(String) onTextChanged;
  final Function(String)? onSearchPress;
  final FocusNode? focusNode;

  const SearchTextField(
      {super.key,
      this.initText = Constants.EMPTY,
      this.initHintText = Constants.EMPTY,
      required this.onTextChanged,
      this.onSearchPress,
      this.focusNode});

  @override
  State<StatefulWidget> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController(text: widget.initText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.themeExtensions.bgGrey, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            child: Assets.images.icSearchNormal
                .svg(width: 20, height: 20, color: context.themeExtensions.textGrey),
          ),
          const SizedBox(
            width: 3,
          ),
          Expanded(
              child: TextFormField(
            textInputAction: TextInputAction.search,
            focusNode: widget.focusNode,
            onChanged: (value) {
              widget.onTextChanged.call(value);
            },
            controller: textEditingController,
            style:
                context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textColor),
            decoration: InputDecoration.collapsed(
              hintText: widget.initHintText,
              hintStyle:
                  context.themeExtensions.subTex.copyWith(color: context.themeExtensions.textGrey),
              filled: true,
              fillColor: context.themeExtensions.bgGrey,
            ),
            onFieldSubmitted: (value) => widget.onSearchPress,
          )),
          const SizedBox(
            width: 3,
          ),
          InkWell(
            onTap: () {
              setState(() {
                textEditingController.text = Constants.EMPTY;
                widget.onTextChanged.call(Constants.EMPTY);
              });
            },
            child: Container(
              padding: const EdgeInsets.all(2),
              child: Assets.images.icClose
                  .svg(width: 24, height: 24, color: context.themeExtensions.textGrey),
            ),
          )
        ],
      ),
    );
  }
}
