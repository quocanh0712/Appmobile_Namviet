


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'year_time_response.freezed.dart';
part 'year_time_response.g.dart';


YearTimeResponse yearTimeResponseFromJson(String str) =>
    YearTimeResponse.fromJson(json.decode(str));

String yearTimeResponseToJson(YearTimeResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class YearTimeResponse with _$YearTimeResponse {
  factory YearTimeResponse({
    String? namHoc,
    String? tuNgay,
    String? denNgay,
    String? hocKy,
    int? tuTuan,
    int? denTuan,
    int? idKh,
    int? hocKyHienTai,
    int? tuanHienTai,
    String? namHienTai
  }) = _YearTimeResponse;

  factory YearTimeResponse.fromJson(Map<String, dynamic> json) => _$YearTimeResponseFromJson(json);
}