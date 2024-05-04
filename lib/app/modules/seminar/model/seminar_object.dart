

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/annotations/lib/annotations.dart';

part 'semimnar_object.freezed.dart';
part 'seminar_object.g.dart';

@freezed
@genJsonT4ThisOne
class SeminarObject with _$SeminarObject {
  factory SeminarObject({
    int? id,
    int? namHanhChinh,
    String? namHoc,
    String? tenHoiThao,
    String? soQuyetDinh,
    String? ngayToChuc,
    String? ngayKetThuc,
    String? diaDiemToChuc,
    String? soLuongThamGia,
    String? mucDich,
    String? noiDung,
    String? ngonNgu,
    String? hinhThucTrinhBay,
    String? tenLoaiHoiThao,
}) = _SeminarObject;

  factory SeminarObject.fromJson(Map<String, dynamic> json) => _$SeminarObjectFromJson(json);
}