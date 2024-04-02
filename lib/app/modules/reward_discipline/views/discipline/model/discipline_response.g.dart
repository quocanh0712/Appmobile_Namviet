// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discipline_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisciplineResponseImpl _$$DisciplineResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DisciplineResponseImpl(
      id: json['id'] as int?,
      discipline: json['discipline'] as String?,
      content: json['content'] as String?,
      icon: json['icon'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$DisciplineResponseImplToJson(
        _$DisciplineResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discipline': instance.discipline,
      'content': instance.content,
      'icon': instance.icon,
      'status': instance.status,
    };
