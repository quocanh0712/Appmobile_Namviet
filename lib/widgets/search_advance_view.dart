// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/widgets/chip_filter.dart';
import 'package:get/get.dart';

import '../app/modules/schedule_time/model/schedule_time_request.dart';
import '../generated/locales.g.dart';
import '../utils/date_time_utils.dart';

const int monthSeparate = 7;

class SearchAdvanceResponse {
  String? year;
  int? semester;
  int? session;

  SearchAdvanceResponse({this.year, this.semester, this.session});
}

class SearchAdvanceView extends StatefulWidget {
  final bool isSessionSupported;

  final String? dataYearSelected;
  final int? dataSemesterSelected;
  final int? dataSessionSelected;

  final Function(SearchAdvanceResponse? model)? onModelChanged;

  const SearchAdvanceView({
    super.key,
    this.isSessionSupported = false,
    this.dataYearSelected,
    this.dataSemesterSelected,
    this.dataSessionSelected,
    this.onModelChanged,
  });

  @override
  State<StatefulWidget> createState() => _SearchAdvanceViewState();
}

class _SearchAdvanceViewState extends State<SearchAdvanceView> with TickerProviderStateMixin {
  SearchAdvanceResponse dataSearch = SearchAdvanceResponse();

  int indexYear = 0;
  int indexSemester = 0;
  int indexSession = 0;

  @override
  void initState() {
    if (widget.dataYearSelected == null || widget.dataYearSelected?.isBlank == true) {
      DateTime dateNow = DateTime.now();
      int month = dateNow.month;
      if (month < monthSeparate) {
        // (now - 1)  - now
        indexYear = 1;
      } else {
        // now - (now + 1)
        indexYear = 2;
      }
    } else {
      indexYear = DateTimeUtils.getYearList().indexOf(widget.dataYearSelected!);
    }

    if (widget.dataSemesterSelected == null) {
      DateTime dateNow = DateTime.now();
      int month = dateNow.month;
      if (month < monthSeparate) {
        // học kỳ 2
        indexSemester = 1;
      } else {
        // học kỳ 1
        indexSemester = 0;
      }
    } else {
      indexSemester =
          listSemesterModel.map((e) => e.key).toList().indexOf(widget.dataSemesterSelected!);
    }

    if (widget.dataSemesterSelected != null) {
      indexSession =
          listSessionModel.map((e) => e.key).toList().indexOf(widget.dataSemesterSelected!);
    }

    dataSearch = SearchAdvanceResponse(
      year: DateTimeUtils.getYearList()[indexYear],
      semester: listSemesterModel[indexSemester].key,
      session: listSemesterModel[indexSession].key,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          ChipsFilter(
            filters: DateTimeUtils.getYearList(),
            title: LocaleKeys.chooseYear.tr,
            indexSelected: indexYear,
            onSelectChanged: (index, value) {
              dataSearch = SearchAdvanceResponse(
                year: value,
                semester: dataSearch.semester,
                session: dataSearch.session,
              );
              widget.onModelChanged?.call(dataSearch);
            },
          ),
          const SizedBox(height: 12),
          ChipsFilter(
            filters: listSemesterModel.map((e) => e.label).toList(),
            indexSelected: indexSemester,
            title: LocaleKeys.chooseSemester.tr,
            onSelectChanged: (index, value) {
              dataSearch = SearchAdvanceResponse(
                year: dataSearch.year,
                semester: listSemesterModel[index].key,
                session: dataSearch.session,
              );
              widget.onModelChanged?.call(dataSearch);
            },
          ),
          Visibility(
              visible: widget.isSessionSupported,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Align(
                    child: ChipsFilter(
                      filters: listSessionModel.map((e) => e.label).toList(),
                      indexSelected: indexSession,
                      title: LocaleKeys.chooseSession.tr,
                      onSelectChanged: (index, value) {
                        dataSearch = SearchAdvanceResponse(
                            year: dataSearch.year,
                            semester: dataSearch.semester,
                            session: listSessionModel[index].key);
                        widget.onModelChanged?.call(dataSearch);
                      },
                    ),
                  )
                ],
              )),
          const SizedBox(height: 6),
        ],
      );
}
