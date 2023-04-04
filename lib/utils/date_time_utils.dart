// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:ftu_lms/widgets/search_advance_view.dart';
import 'package:intl/intl.dart';

import '../app/modules/schedule_time/model/schedule_time_request.dart';

class DateTimeUtils {
  static const yMd = 'dd/MM/yyyy';
  static String formatDateTime(DateTime dateTime, DateFormat dateFormat) {
    return dateFormat.format(dateTime);
  }

  static DateTime? convertFromDateString(
      {required String dateString, required DateFormat dateFormat}) {
    DateTime? date;
    try {
      date = dateFormat.parse(dateString);
    } catch (e) {
      date = null;
    }
    return date;
  }

  static List<String> getYearList() {
    DateTime dateNow = DateTime.now();
    DateTime dateBeforeOneYear = DateTime(dateNow.year - 1, dateNow.month, dateNow.day);
    DateTime dateBeforeTwoYear = DateTime(dateNow.year - 2, dateNow.month, dateNow.day);
    DateTime dateAfterOneYear = DateTime(dateNow.year + 1, dateNow.month, dateNow.day);
    DateTime dateAfterTwoYear = DateTime(dateNow.year + 2, dateNow.month, dateNow.day);
    return [
      getYearSchool(dateBeforeTwoYear, dateBeforeOneYear),
      getYearSchool(dateBeforeOneYear, dateNow),
      getYearSchool(dateNow, dateAfterOneYear),
      getYearSchool(dateAfterOneYear, dateAfterTwoYear),
    ];
  }

  static String getYearSchool(DateTime before, DateTime after) {
    return "${before.year}-${after.year}";
  }

  SearchAdvanceResponse? retrieveCurrentAdvanceSearchParam() {
    const monthSeparate = 7;
    int indexYear = 0;
    int indexSemester = 0;
    int indexSession = 0;
    DateTime dateNow = DateTime.now();
    int month = dateNow.month;
    if (month < monthSeparate) {
      // (now - 1)  - now
      indexYear = 1;
      // học kỳ 2
      indexSemester = 1;
    } else {
      // now - (now + 1)
      indexYear = 2;
      // học kỳ 1
      indexSemester = 0;
    }
    return SearchAdvanceResponse(
      year: getYearList()[indexYear],
      semester: listSemesterModel[indexSemester].key,
      session: listSemesterModel[indexSession].key,
    );
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime? other) {
    return year == other?.year && month == other?.month && day == other?.day;
  }
}

int maxScaleTime = 2 * 365;

DateTime minDate = DateTime.now().subtract(Duration(days: maxScaleTime));
DateTime maxDate = DateTime.now().add(Duration(days: maxScaleTime));

DateFormat both = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
DateFormat date = DateFormat('dd-MM-yyyy');
DateFormat dateYMD = DateFormat('yyyy-MM-dd');
DateFormat dateYMDSlash = DateFormat('yyyy/MM/dd');
DateFormat timeAndDate = DateFormat('HH:mm dd/MM/yyyy');
DateFormat dateSlash = DateFormat('dd/MM/yyyy');
DateFormat time = DateFormat("HH:mm");
DateFormat dateOnly = DateFormat('dd');
DateFormat monthOnly = DateFormat('MM');
DateFormat yearOnly = DateFormat('yyyy');
DateFormat monthYear = DateFormat('MM - yyyy');
DateFormat dayOfWeek = DateFormat('EEEE');
DateFormat dayMonth = DateFormat('dd/MM');
DateFormat monthSplashYear = DateFormat('MM/yyyy');
DateFormat hourMinute = DateFormat('HH:mm');
