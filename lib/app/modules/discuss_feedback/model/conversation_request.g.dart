// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversationRequest _$$_ConversationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationRequest(
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$$_ConversationRequestToJson(
        _$_ConversationRequest instance) =>
    <String, dynamic>{
      'startindex': instance.startindex,
      'length': instance.length,
      'keyword': instance.keyword,
    };
