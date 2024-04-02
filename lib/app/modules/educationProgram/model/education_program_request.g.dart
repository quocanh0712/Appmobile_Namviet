// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_program_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationProgramRequestImpl _$$EducationProgramRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EducationProgramRequestImpl(
      year: json['year'] as String?,
      semester: json['semester'] as int?,
      startindex: json['startindex'] as int?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$EducationProgramRequestImplToJson(
        _$EducationProgramRequestImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'semester': instance.semester,
      'startindex': instance.startindex,
      'length': instance.length,
    };
