// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'child_practice_criteria_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChildPracticeCriteriaObject _$ChildPracticeCriteriaObjectFromJson(
    Map<String, dynamic> json) {
  return _ChildPracticeCriteriaObject.fromJson(json);
}

/// @nodoc
mixin _$ChildPracticeCriteriaObject {
  int? get id => throw _privateConstructorUsedError;
  String? get levelCriteriaName => throw _privateConstructorUsedError;
  int? get maxPoint => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildPracticeCriteriaObjectCopyWith<ChildPracticeCriteriaObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildPracticeCriteriaObjectCopyWith<$Res> {
  factory $ChildPracticeCriteriaObjectCopyWith(
          ChildPracticeCriteriaObject value,
          $Res Function(ChildPracticeCriteriaObject) then) =
      _$ChildPracticeCriteriaObjectCopyWithImpl<$Res,
          ChildPracticeCriteriaObject>;
  @useResult
  $Res call({int? id, String? levelCriteriaName, int? maxPoint, int? point});
}

/// @nodoc
class _$ChildPracticeCriteriaObjectCopyWithImpl<$Res,
        $Val extends ChildPracticeCriteriaObject>
    implements $ChildPracticeCriteriaObjectCopyWith<$Res> {
  _$ChildPracticeCriteriaObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? levelCriteriaName = freezed,
    Object? maxPoint = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      levelCriteriaName: freezed == levelCriteriaName
          ? _value.levelCriteriaName
          : levelCriteriaName // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPoint: freezed == maxPoint
          ? _value.maxPoint
          : maxPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildPracticeCriteriaObjectCopyWith<$Res>
    implements $ChildPracticeCriteriaObjectCopyWith<$Res> {
  factory _$$_ChildPracticeCriteriaObjectCopyWith(
          _$_ChildPracticeCriteriaObject value,
          $Res Function(_$_ChildPracticeCriteriaObject) then) =
      __$$_ChildPracticeCriteriaObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? levelCriteriaName, int? maxPoint, int? point});
}

/// @nodoc
class __$$_ChildPracticeCriteriaObjectCopyWithImpl<$Res>
    extends _$ChildPracticeCriteriaObjectCopyWithImpl<$Res,
        _$_ChildPracticeCriteriaObject>
    implements _$$_ChildPracticeCriteriaObjectCopyWith<$Res> {
  __$$_ChildPracticeCriteriaObjectCopyWithImpl(
      _$_ChildPracticeCriteriaObject _value,
      $Res Function(_$_ChildPracticeCriteriaObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? levelCriteriaName = freezed,
    Object? maxPoint = freezed,
    Object? point = freezed,
  }) {
    return _then(_$_ChildPracticeCriteriaObject(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      levelCriteriaName: freezed == levelCriteriaName
          ? _value.levelCriteriaName
          : levelCriteriaName // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPoint: freezed == maxPoint
          ? _value.maxPoint
          : maxPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildPracticeCriteriaObject implements _ChildPracticeCriteriaObject {
  _$_ChildPracticeCriteriaObject(
      {this.id, this.levelCriteriaName, this.maxPoint, this.point});

  factory _$_ChildPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =>
      _$$_ChildPracticeCriteriaObjectFromJson(json);

  @override
  final int? id;
  @override
  final String? levelCriteriaName;
  @override
  final int? maxPoint;
  @override
  final int? point;

  @override
  String toString() {
    return 'ChildPracticeCriteriaObject(id: $id, levelCriteriaName: $levelCriteriaName, maxPoint: $maxPoint, point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildPracticeCriteriaObject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.levelCriteriaName, levelCriteriaName) ||
                other.levelCriteriaName == levelCriteriaName) &&
            (identical(other.maxPoint, maxPoint) ||
                other.maxPoint == maxPoint) &&
            (identical(other.point, point) || other.point == point));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, levelCriteriaName, maxPoint, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildPracticeCriteriaObjectCopyWith<_$_ChildPracticeCriteriaObject>
      get copyWith => __$$_ChildPracticeCriteriaObjectCopyWithImpl<
          _$_ChildPracticeCriteriaObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildPracticeCriteriaObjectToJson(
      this,
    );
  }
}

abstract class _ChildPracticeCriteriaObject
    implements ChildPracticeCriteriaObject {
  factory _ChildPracticeCriteriaObject(
      {final int? id,
      final String? levelCriteriaName,
      final int? maxPoint,
      final int? point}) = _$_ChildPracticeCriteriaObject;

  factory _ChildPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =
      _$_ChildPracticeCriteriaObject.fromJson;

  @override
  int? get id;
  @override
  String? get levelCriteriaName;
  @override
  int? get maxPoint;
  @override
  int? get point;
  @override
  @JsonKey(ignore: true)
  _$$_ChildPracticeCriteriaObjectCopyWith<_$_ChildPracticeCriteriaObject>
      get copyWith => throw _privateConstructorUsedError;
}
