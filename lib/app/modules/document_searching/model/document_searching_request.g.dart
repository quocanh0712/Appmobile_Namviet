// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_searching_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentSearchingRequestImpl _$$DocumentSearchingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentSearchingRequestImpl(
      iduser: json['iduser'] as String?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      loaiDiDen: json['loai_diden'] as String?,
    );

Map<String, dynamic> _$$DocumentSearchingRequestImplToJson(
        _$DocumentSearchingRequestImpl instance) =>
    <String, dynamic>{
      'iduser': instance.iduser,
      'startindex': instance.startindex,
      'length': instance.length,
      'loai_diden': instance.loaiDiDen,
    };
