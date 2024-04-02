// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_courses_points_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllCoursesPointsObjectImpl _$$AllCoursesPointsObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$AllCoursesPointsObjectImpl(
      semesterCount: json['semesterCount'] as int?,
      selectedSemesterverage:
          (json['selectedSemesterverage'] as num?)?.toDouble(),
      allSemestersAvarage: (json['allSemestersAvarage'] as num?)?.toDouble(),
      classification: json['classification'] as String?,
      selectedSemester: json['selectedSemester'] as String?,
      selectedSemesterClassification:
          json['selectedSemesterClassification'] as String?,
      lstCourses: (json['listcourse'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CourseObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllCoursesPointsObjectImplToJson(
        _$AllCoursesPointsObjectImpl instance) =>
    <String, dynamic>{
      'semesterCount': instance.semesterCount,
      'selectedSemesterverage': instance.selectedSemesterverage,
      'allSemestersAvarage': instance.allSemestersAvarage,
      'classification': instance.classification,
      'selectedSemester': instance.selectedSemester,
      'selectedSemesterClassification': instance.selectedSemesterClassification,
      'listcourse': instance.lstCourses,
    };
