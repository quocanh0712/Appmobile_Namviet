// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_course_points_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleCoursePointsObject _$SingleCoursePointsObjectFromJson(
    Map<String, dynamic> json) {
  return _SingleCoursePointsObject.fromJson(json);
}

/// @nodoc
mixin _$SingleCoursePointsObject {
  int? get id => throw _privateConstructorUsedError;
  String? get pointname => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleCoursePointsObjectCopyWith<SingleCoursePointsObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCoursePointsObjectCopyWith<$Res> {
  factory $SingleCoursePointsObjectCopyWith(SingleCoursePointsObject value,
          $Res Function(SingleCoursePointsObject) then) =
      _$SingleCoursePointsObjectCopyWithImpl<$Res, SingleCoursePointsObject>;
  @useResult
  $Res call({int? id, String? pointname, int? point});
}

/// @nodoc
class _$SingleCoursePointsObjectCopyWithImpl<$Res,
        $Val extends SingleCoursePointsObject>
    implements $SingleCoursePointsObjectCopyWith<$Res> {
  _$SingleCoursePointsObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pointname = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pointname: freezed == pointname
          ? _value.pointname
          : pointname // ignore: cast_nullable_to_non_nullable
              as String?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleCoursePointsObjectCopyWith<$Res>
    implements $SingleCoursePointsObjectCopyWith<$Res> {
  factory _$$_SingleCoursePointsObjectCopyWith(
          _$_SingleCoursePointsObject value,
          $Res Function(_$_SingleCoursePointsObject) then) =
      __$$_SingleCoursePointsObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? pointname, int? point});
}

/// @nodoc
class __$$_SingleCoursePointsObjectCopyWithImpl<$Res>
    extends _$SingleCoursePointsObjectCopyWithImpl<$Res,
        _$_SingleCoursePointsObject>
    implements _$$_SingleCoursePointsObjectCopyWith<$Res> {
  __$$_SingleCoursePointsObjectCopyWithImpl(_$_SingleCoursePointsObject _value,
      $Res Function(_$_SingleCoursePointsObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pointname = freezed,
    Object? point = freezed,
  }) {
    return _then(_$_SingleCoursePointsObject(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pointname: freezed == pointname
          ? _value.pointname
          : pointname // ignore: cast_nullable_to_non_nullable
              as String?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleCoursePointsObject implements _SingleCoursePointsObject {
  _$_SingleCoursePointsObject({this.id, this.pointname, this.point});

  factory _$_SingleCoursePointsObject.fromJson(Map<String, dynamic> json) =>
      _$$_SingleCoursePointsObjectFromJson(json);

  @override
  final int? id;
  @override
  final String? pointname;
  @override
  final int? point;

  @override
  String toString() {
    return 'SingleCoursePointsObject(id: $id, pointname: $pointname, point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleCoursePointsObject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pointname, pointname) ||
                other.pointname == pointname) &&
            (identical(other.point, point) || other.point == point));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pointname, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleCoursePointsObjectCopyWith<_$_SingleCoursePointsObject>
      get copyWith => __$$_SingleCoursePointsObjectCopyWithImpl<
          _$_SingleCoursePointsObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleCoursePointsObjectToJson(
      this,
    );
  }
}

abstract class _SingleCoursePointsObject implements SingleCoursePointsObject {
  factory _SingleCoursePointsObject(
      {final int? id,
      final String? pointname,
      final int? point}) = _$_SingleCoursePointsObject;

  factory _SingleCoursePointsObject.fromJson(Map<String, dynamic> json) =
      _$_SingleCoursePointsObject.fromJson;

  @override
  int? get id;
  @override
  String? get pointname;
  @override
  int? get point;
  @override
  @JsonKey(ignore: true)
  _$$_SingleCoursePointsObjectCopyWith<_$_SingleCoursePointsObject>
      get copyWith => throw _privateConstructorUsedError;
}
