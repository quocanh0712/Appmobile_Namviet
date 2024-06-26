// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:ftu_lms/data/remote/interfaces/base_response_object.dart';

class NetworkDecoder {
  static var shared = NetworkDecoder();

  K decode<T, K>({required Response<dynamic> response, required T responseType}) {
    try {
      if (response.data is List) {
        var list = response.data as List;
        var dataList = List<T>.from(list
            .map((item) => (responseType as BaseResponseObject?)?.decodeJson(item))
            .toList()) as K;
        return dataList;
      } else {
        var data = (responseType as BaseResponseObject?)?.decodeJson(response.data) as K;
        return data;
      }
    } on TypeError catch (e) {
      Fimber.e(e.stackTrace.toString());
      rethrow;
    }
  }
}
