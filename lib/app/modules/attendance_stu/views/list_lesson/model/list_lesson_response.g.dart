// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_lesson_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ListLessonResponse? jsonToNullableListLessonResponse(Object? json) =>
    ListLessonResponse.fromJson(json as Map<String, dynamic>);

ListLessonResponse jsonToListLessonResponse(Object? json) =>
    ListLessonResponse.fromJson(json as Map<String, dynamic>);

List<ListLessonResponse?> jsonToListNullableListLessonResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ListLessonResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ListLessonResponse> jsonToListListLessonResponse(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ListLessonResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListLessonResponseImpl _$$ListLessonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListLessonResponseImpl(
      id: json['id'] as String?,
      thoiGian: json['thoi_gian'] as String?,
      diaDiem: json['dia_diem'] as String?,
      tenMon: json['ten_mon'] as String?,
      idSv: json['iD_lop'] as int?,
      tenLop: json['ten_lop'] as String?,
      idMon: json['iD_mon'] as int?,
      tuNgay: json['tu_ngay'] as String?,
      denNgay: json['den_ngay'] as String?,
      ngayChiTiet: json['ngayChiTiet'] as String?,
      caHoc: json['ca_hoc'] as String?,
      soTiet: json['so_tiet'] as int?,
      tiet: json['tiet'] as int?,
      idPhong: json['iD_phong'] as int?,
      thoiGianHoc: json['thoi_gian_hoc'] as String?,
      tuanThu: json['tuan_thu'] as int?,
      isDiemDanh: json['isDiemDanh'] as int?,
      hoTen: json['ho_ten'] as String?,
      namHoc: json['nam_hoc'] as String?,
      tenNha: json['ten_nha'] as String?,
    );

Map<String, dynamic> _$$ListLessonResponseImplToJson(
        _$ListLessonResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thoi_gian': instance.thoiGian,
      'dia_diem': instance.diaDiem,
      'ten_mon': instance.tenMon,
      'iD_lop': instance.idSv,
      'ten_lop': instance.tenLop,
      'iD_mon': instance.idMon,
      'tu_ngay': instance.tuNgay,
      'den_ngay': instance.denNgay,
      'ngayChiTiet': instance.ngayChiTiet,
      'ca_hoc': instance.caHoc,
      'so_tiet': instance.soTiet,
      'tiet': instance.tiet,
      'iD_phong': instance.idPhong,
      'thoi_gian_hoc': instance.thoiGianHoc,
      'tuan_thu': instance.tuanThu,
      'isDiemDanh': instance.isDiemDanh,
      'ho_ten': instance.hoTen,
      'nam_hoc': instance.namHoc,
      'ten_nha': instance.tenNha,
    };
