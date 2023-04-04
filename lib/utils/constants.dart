// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'dart:ui';

class Constants {
  static const String EMPTY = "";
  static const String HTTPS_SCHEME = "https";
  static const String FTU_HOST = "ftu.edu.vn";
  static const String SUPPORT_PHONE_NUMBER = "0967 648 834";
  static const String UNIVERSITY_WEBSITE = "https://ftu.edu.vn/";
  static const String ONE_SIGNAL_APP_ID = "c54e1ad1-a7d2-45b5-99d5-7b3957d0624b";
  static const emailValidateReg =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const phoneValidateReg = r"([\+84|84|0]+(3|5|7|8|9|1[2|6|8|9]))+([0-9]{8})\b";
  // password validation regex: Minimum eight characters, at least one uppercase letter,
  // one lowercase letter, one number and one special character:
  // static const passValidateReg =
  //     r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
  // password validation regex: Minimum six characters, at least one letter, one number and one special character:
  static const passValidateReg = r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$";
}

class InfiniteList {
  static const int ITEMS_PER_PAGE = 20;
  static const int NEXT_PAGE_THRESHOLD = 10;
}

class LMSLocale {
  static const Locale vnVI = Locale("vn", "VI");
  static const Locale enUS = Locale("en", "US");
}

class ToastDuration {
  static const LENGTH_SHORT = Duration(milliseconds: 2000);
  static const LENGTH_LONG = Duration(milliseconds: 3500);
}

class CourseStatus {
  static const PASS = 'pass';
  static const FAIL = 'fail';
}

class BillStatus {
  static const PAID = 1;
}

enum ServiceRequestStatus { all, waiting, approved, rejected }

extension ServiceRequestStatusExt on ServiceRequestStatus {
  int get value {
    switch (this) {
      case ServiceRequestStatus.rejected:
        return 1;
      case ServiceRequestStatus.waiting:
        return 2;
      case ServiceRequestStatus.approved:
        return 3;
      default:
        return 0;
    }
  }
}
