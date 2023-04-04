// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_request_document_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyRequestDocumentRequest _$$_MyRequestDocumentRequestFromJson(
        Map<String, dynamic> json) =>
    _$_MyRequestDocumentRequest(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_MyRequestDocumentRequestToJson(
        _$_MyRequestDocumentRequest instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
      'status': instance.status,
    };
