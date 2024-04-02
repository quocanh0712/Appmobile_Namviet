// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_request_document_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyRequestDocumentRequestImpl _$$MyRequestDocumentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MyRequestDocumentRequestImpl(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$MyRequestDocumentRequestImplToJson(
        _$MyRequestDocumentRequestImpl instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
      'status': instance.status,
    };
