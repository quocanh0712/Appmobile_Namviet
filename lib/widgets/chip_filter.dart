// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:get/get.dart';

class ChipsFilter extends StatefulWidget {
  final String title;

  ///
  /// The list of the filters
  ///
  final List<String> filters;

  ///
  /// The default selected index starting with 0
  ///
  final int indexSelected;

  final Function(int index, String value)? onSelectChanged;

  const ChipsFilter(
      {Key? key,
      required this.filters,
      required this.indexSelected,
      required this.title,
      this.onSelectChanged})
      : super(key: key);

  @override
  State createState() => _ChipsFilterState();
}

class _ChipsFilterState extends State<ChipsFilter> {
  ///
  /// Currently selected index
  ///
  int selectedIndex = -1;

  @override
  void initState() {
    if (widget.indexSelected >= 0 && widget.indexSelected < widget.filters.length) {
      selectedIndex = widget.indexSelected;
    } else if (widget.filters.isNotEmpty) {
      selectedIndex = 0;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.title,
              style: context.themeExtensions.subTexMedium
                  .copyWith(color: context.themeExtensions.textColor)),
        ),
        const SizedBox(height: 8),
        Align(alignment: Alignment.centerLeft, child: _chipList()),
      ],
    );
  }

  Widget _chipList() {
    return Wrap(
        alignment: WrapAlignment.start, spacing: 8.0, runSpacing: 0.0, children: _getChips());
  }

  List<Widget> _getChips() {
    var chipWidgets = <Widget>[];
    for (var element in widget.filters) {
      chipWidgets.add(_buildChip(element));
    }
    return chipWidgets;
  }

  Widget _buildChip(String label) {
    bool isSelected = selectedIndex != -1 && label == widget.filters[selectedIndex];
    return ActionChip(
      label: Text(
        label,
        style: isSelected
            ? Get.context?.themeExtensions.paragraph
                .copyWith(color: Get.context?.themeExtensions.white)
            : Get.context?.themeExtensions.paragraph
                .copyWith(color: Get.context?.themeExtensions.textColor),
      ),
      side: BorderSide(
        color: isSelected
            ? Get.context!.themeExtensions.darkGreen
            : Get.context!.themeExtensions.bgGrey,
        width: 1,
        strokeAlign: BorderSide.strokeAlignInside, // StrokeAlign.inside,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isSelected
                ? Get.context!.themeExtensions.darkGreen
                : Get.context!.themeExtensions.bgGrey,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside, // StrokeAlign.inside,
          )),
      padding: const EdgeInsets.all(6),
      backgroundColor:
          isSelected ? Get.context?.themeExtensions.darkGreen : Get.context?.themeExtensions.white,
      onPressed: () {
        setState(() {
          int index = widget.filters.indexOf(label);
          selectedIndex = index == selectedIndex ? -1 : index;
          widget.onSelectChanged?.call(selectedIndex,
              selectedIndex == -1 ? Constants.EMPTY : widget.filters[selectedIndex]);
        });
      },
    );
  }
}
