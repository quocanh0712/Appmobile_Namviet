// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_practice_criteria_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ChildPracticeCriteriaObjectImplCopyWith<$Res>
    implements $ChildPracticeCriteriaObjectCopyWith<$Res> {
  factory _$$ChildPracticeCriteriaObjectImplCopyWith(
          _$ChildPracticeCriteriaObjectImpl value,
          $Res Function(_$ChildPracticeCriteriaObjectImpl) then) =
      __$$ChildPracticeCriteriaObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? levelCriteriaName, int? maxPoint, int? point});
}

/// @nodoc
class __$$ChildPracticeCriteriaObjectImplCopyWithImpl<$Res>
    extends _$ChildPracticeCriteriaObjectCopyWithImpl<$Res,
        _$ChildPracticeCriteriaObjectImpl>
    implements _$$ChildPracticeCriteriaObjectImplCopyWith<$Res> {
  __$$ChildPracticeCriteriaObjectImplCopyWithImpl(
      _$ChildPracticeCriteriaObjectImpl _value,
      $Res Function(_$ChildPracticeCriteriaObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? levelCriteriaName = freezed,
    Object? maxPoint = freezed,
    Object? point = freezed,
  }) {
    return _then(_$ChildPracticeCriteriaObjectImpl(
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
class _$ChildPracticeCriteriaObjectImpl
    implements _ChildPracticeCriteriaObject {
  _$ChildPracticeCriteriaObjectImpl(
      {this.id, this.levelCriteriaName, this.maxPoint, this.point});

  factory _$ChildPracticeCriteriaObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChildPracticeCriteriaObjectImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildPracticeCriteriaObjectImpl &&
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
  _$$ChildPracticeCriteriaObjectImplCopyWith<_$ChildPracticeCriteriaObjectImpl>
      get copyWith => __$$ChildPracticeCriteriaObjectImplCopyWithImpl<
          _$ChildPracticeCriteriaObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildPracticeCriteriaObjectImplToJson(
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
      final int? point}) = _$ChildPracticeCriteriaObjectImpl;

  factory _ChildPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =
      _$ChildPracticeCriteriaObjectImpl.fromJson;

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
  _$$ChildPracticeCriteriaObjectImplCopyWith<_$ChildPracticeCriteriaObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
