// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_searching_response.dart';

DocumentSearchingResponse? jsonToNullableDocumentSearchingResponse(Object? json) =>
    DocumentSearchingResponse.fromJson(json as Map<String, dynamic>);

DocumentSearchingResponse jsonToDocumentSearchingResponse(Object? json) =>
    DocumentSearchingResponse.fromJson(json as Map<String, dynamic>);

List<DocumentSearchingResponse?> jsonToListNullableDocumentSearchingResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DocumentSearchingResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<DocumentSearchingResponse> jsonToListDocumentSearchingResponse(
    Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DocumentSearchingResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentSearchingResponseImpl _$$DocumentSearchingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentSearchingResponseImpl(
      id: json['id'] as int?,
      soKyHieu: json['soKyHieu'] as String?,
      soDiDen: json['soDiDen'] as int?,
      trichYeu: json['trichYeu'] as String?,
      ngayBanHanh: json['ngayBanHanh'] as String?,
      ngayNhanGui: json['ngayNhanGui'] as String?,
      coQuanBanHanh: json['coQuanBanHanh'] as String?,
      fileUrl: json['fileUrl'] as String?,
      trangThaiPhanPhoi: json['trangThaiPhanPhoi'] as int?,
    );

Map<String, dynamic> _$$DocumentSearchingResponseImplToJson(
        _$DocumentSearchingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'soKyHieu': instance.soKyHieu,
      'soDiDen': instance.soDiDen,
      'trichYeu': instance.trichYeu,
      'ngayBanHanh': instance.ngayBanHanh,
      'ngayNhanGui': instance.ngayNhanGui,
      'coQuanBanHanh': instance.coQuanBanHanh,
      'fileUrl': instance.fileUrl,
      'trangThaiPhanPhoi': instance.trangThaiPhanPhoi,
    };
