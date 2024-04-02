// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentRequestImpl _$$CommentRequestImplFromJson(Map<String, dynamic> json) =>
    _$CommentRequestImpl(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$CommentRequestImplToJson(
        _$CommentRequestImpl instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
      'id': instance.id,
    };
