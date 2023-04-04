// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elearning_response.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

ELearningResponse? jsonToNullableELearningResponse(Object? json) =>
    ELearningResponse.fromJson(json as Map<String, dynamic>);

ELearningResponse jsonToELearningResponse(Object? json) =>
    ELearningResponse.fromJson(json as Map<String, dynamic>);

List<ELearningResponse?> jsonToListNullableELearningResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ELearningResponse.fromJson(e as Map<String, dynamic>))
        .toList();

List<ELearningResponse> jsonToListELearningResponses(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => ELearningResponse.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ELearningResponse _$$_ELearningResponseFromJson(Map<String, dynamic> json) =>
    _$_ELearningResponse(
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      time: json['time'] as String?,
      teacher: json['teacher'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_ELearningResponseToJson(
        _$_ELearningResponse instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'time': instance.time,
      'teacher': instance.teacher,
      'link': instance.link,
    };
