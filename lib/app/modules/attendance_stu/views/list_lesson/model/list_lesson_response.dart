





import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../utils/annotations/lib/annotations.dart';

part 'list_lesson_response.freezed.dart';
part 'list_lesson_response.g.dart';


ListLessonResponse listLessonResponseFromJson(String str) =>
    ListLessonResponse.fromJson(json.decode(str));

String listLessonResponseToJson(ListLessonResponse data) => json.encode(data.toJson());
@freezed
@genJsonT4ThisOne
class ListLessonResponse with _$ListLessonResponse {
  factory ListLessonResponse({
    String? id,
    @JsonKey(name: 'thoi_gian') String? thoiGian,
    @JsonKey(name: 'dia_diem') String? diaDiem,
    @JsonKey(name: 'ten_mon') String? tenMon,
    @JsonKey(name: 'iD_lop') int? idSv,
    @JsonKey(name: 'ten_lop') String? tenLop,
    @JsonKey(name: 'iD_mon') int? idMon,
    @JsonKey(name: 'tu_ngay') String? tuNgay,
    @JsonKey(name: 'den_ngay') String? denNgay,
    String? ngayChiTiet,
    @JsonKey(name: 'ca_hoc') String? caHoc,
    @JsonKey(name: 'so_tiet') int? soTiet,
    int? tiet,
    @JsonKey(name: 'iD_phong') int? idPhong,
    @JsonKey(name: 'thoi_gian_hoc') String? thoiGianHoc,
    @JsonKey(name: 'tuan_thu') int? tuanThu,
    int? isDiemDanh,
    @JsonKey(name: 'ho_ten') String? hoTen,
    @JsonKey(name: 'nam_hoc') String? namHoc,
    @JsonKey(name: 'ten_nha') String? tenNha,


  }) = _ListLessonResponse;

  factory ListLessonResponse.fromJson(Map<String, dynamic> json) => _$ListLessonResponseFromJson(json);
}