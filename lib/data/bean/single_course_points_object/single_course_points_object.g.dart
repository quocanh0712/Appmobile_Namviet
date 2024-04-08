// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_course_points_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

SingleCoursePointsObject? jsonToNullableSingleCoursePointsObject(
    Object? json) =>
    SingleCoursePointsObject.fromJson(json as Map<String, dynamic>);

SingleCoursePointsObject jsonToSingleCoursePointsObject(Object? json) =>
    SingleCoursePointsObject.fromJson(json as Map<String, dynamic>);

List<SingleCoursePointsObject?> jsonToListNullableSingleCoursePointsObjects(
    Object? json) =>
    List<Object>.from(json as List)
        .map(
            (e) => SingleCoursePointsObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<SingleCoursePointsObject> jsonToListSingleCoursePointsObjects(
    Object? json) =>
    List<Object>.from(json as List)
        .map(
            (e) => SingleCoursePointsObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleCoursePointsObjectImpl _$$SingleCoursePointsObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCoursePointsObjectImpl(
      id: json['id'] as int?,
      pointname: json['pointname'] as String?,
      point: json['point'] as int?,
    );

Map<String, dynamic> _$$SingleCoursePointsObjectImplToJson(
        _$SingleCoursePointsObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pointname': instance.pointname,
      'point': instance.point,
    };
