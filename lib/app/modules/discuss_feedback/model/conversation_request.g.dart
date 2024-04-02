// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationRequestImpl _$$ConversationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationRequestImpl(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$$ConversationRequestImplToJson(
        _$ConversationRequestImpl instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
    };
