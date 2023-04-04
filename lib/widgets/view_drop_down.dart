// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/assets.gen.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';

class DropDownView extends StatefulWidget {
  final String? defaultData;
  final List<String>? dataList;
  final Widget? arrowDown;
  final double? iconSize;
  final int? elevation;
  final TextStyle? style;
  final ValueChanged<String?>? onChanged;
  final double heightView;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? borderWidth;
  final bool? isHiddenKeyboard;

  const DropDownView({
    Key? key,
    this.defaultData,
    this.dataList,
    this.arrowDown,
    this.iconSize,
    this.elevation,
    this.style,
    this.onChanged,
    this.heightView = 40,
    this.backgroundColor,
    this.textColor,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.isHiddenKeyboard = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => DropDownViewState();
}

class DropDownViewState extends State<DropDownView> {
  String dropdownValue = "";
  List<String> dataList = [];

  void refresh(String? newValue, List<String> dataList) {
    setState(() {
      FocusScope.of(context).requestFocus(FocusNode());
      dropdownValue = newValue ?? "";
      dataList = dataList;
      widget.onChanged?.call(newValue);
    });
  }

  @override
  void initState() {
    dropdownValue = widget.defaultData ?? "";
    dataList = widget.dataList?.toSet().toList() ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightView,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.themeExtensions.textGrey,
          width: widget.borderWidth ?? 0.5,
        ),
      ),
      child: DropdownButton<String>(
          value: dropdownValue,
          icon: widget.arrowDown ??
              Assets.images.icArrowDown
                  .svg(width: 24, height: 24, color: context.themeExtensions.mainGreen),
          iconSize: 24,
          isExpanded: true,
          underline: const SizedBox(),
          onChanged: (String? newValue) {
            refresh(newValue, dataList);
          },
          items: dataList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: context.themeExtensions.paragraph
                    .copyWith(color: context.themeExtensions.textColor),
              ),
            );
          }).toList()),
    );
  }
}
