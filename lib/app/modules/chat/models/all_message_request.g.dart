// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllMessageRequestImpl _$$AllMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AllMessageRequestImpl(
      iduser: json['iduser'] as String?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      idRoom: json['idRoom'] as int?,
    );

Map<String, dynamic> _$$AllMessageRequestImplToJson(
        _$AllMessageRequestImpl instance) =>
    <String, dynamic>{
      'iduser': instance.iduser,
      'startindex': instance.startindex,
      'length': instance.length,
      'idRoom': instance.idRoom,
    };
