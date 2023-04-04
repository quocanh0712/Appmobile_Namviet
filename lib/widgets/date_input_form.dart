// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:intl/intl.dart';

import '../generated/assets.gen.dart';
import '../utils/date_time_utils.dart';

class DateInputForm extends StatefulWidget {
  final DateTime? initDate;
  final String? headerText;
  final Function(DateTime? value)? onDataChange;
  final DateFormat? dateFormat;

  const DateInputForm(
      {super.key, this.initDate, this.onDataChange, this.headerText, this.dateFormat});

  @override
  State<StatefulWidget> createState() => _DateInputFormState();
}

class _DateInputFormState extends State<DateInputForm> {
  DateTime? dateDate;

  @override
  void initState() {
    dateDate = widget.initDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          if (widget.headerText?.isNotEmpty == true) ...{
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.headerText ?? '',
                style: context.themeExtensions.subTexMedium
                    .copyWith(color: context.themeExtensions.textColor),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          },
          InkWell(
            onTap: () async {
              DateTime? dateChoose = await showDatePicker(
                context: context,
                initialDate: dateDate ?? DateTime.now(),
                firstDate: minDate,
                lastDate: maxDate,
              );
              setState(() {
                dateDate = dateChoose;
                widget.onDataChange?.call(dateDate);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: context.themeExtensions.bgGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 12, left: 12),
              child: Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      dateDate == null
                          ? "--/--/----"
                          : DateTimeUtils.formatDateTime(
                              dateDate!, widget.dateFormat ?? dateSlash),
                      textAlign: TextAlign.left,
                      style: context.themeExtensions.subTexMedium
                          .copyWith(color: context.themeExtensions.textColor),
                    ),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Assets.images.icDate.svg(
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color: context.themeExtensions.textGrey),
                ],
              ),
            ),
          )
        ],
      );
}
