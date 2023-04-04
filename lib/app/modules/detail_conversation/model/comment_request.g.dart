// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentRequest _$$_CommentRequestFromJson(Map<String, dynamic> json) =>
    _$_CommentRequest(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_CommentRequestToJson(_$_CommentRequest instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
      'id': instance.id,
    };
