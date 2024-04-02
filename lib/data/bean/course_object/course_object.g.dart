// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseObjectImpl _$$CourseObjectImplFromJson(Map<String, dynamic> json) =>
    _$CourseObjectImpl(
      id: json['id'] as int?,
      coursename: json['coursename'] as String?,
      numbercredits: json['numbercredits'] as int?,
      numberlession: json['numberlession'] as int?,
      coefficient: json['coefficient'] as int?,
      gpaPoint: (json['gpaPoint'] as num?)?.toDouble(),
      roomname: json['roomname'] as String?,
      timestart:
          const JiffyJsonConverter().fromJson(json['timestart'] as String?),
      timeend: const JiffyJsonConverter().fromJson(json['timeend'] as String?),
      lession: json['lession'],
      identificationnumber: json['identificationnumber'] as String?,
      examTime: json['examTime'] as int?,
      examination: json['examination'] as int?,
      time: json['time'] as String?,
      teachingmethod: json['teachingmethod'],
      status: json['status'],
    );

Map<String, dynamic> _$$CourseObjectImplToJson(_$CourseObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coursename': instance.coursename,
      'numbercredits': instance.numbercredits,
      'numberlession': instance.numberlession,
      'coefficient': instance.coefficient,
      'gpaPoint': instance.gpaPoint,
      'roomname': instance.roomname,
      'timestart': const JiffyJsonConverter().toJson(instance.timestart),
      'timeend': const JiffyJsonConverter().toJson(instance.timeend),
      'lession': instance.lession,
      'identificationnumber': instance.identificationnumber,
      'examTime': instance.examTime,
      'examination': instance.examination,
      'time': instance.time,
      'teachingmethod': instance.teachingmethod,
      'status': instance.status,
    };
