// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parent_practice_criteria_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParentPracticeCriteriaObject _$ParentPracticeCriteriaObjectFromJson(
    Map<String, dynamic> json) {
  return _ParentPracticeCriteriaObject.fromJson(json);
}

/// @nodoc
mixin _$ParentPracticeCriteriaObject {
  int? get id => throw _privateConstructorUsedError;
  String? get typeCriteriaName => throw _privateConstructorUsedError;
  int? get totalScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentPracticeCriteriaObjectCopyWith<ParentPracticeCriteriaObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentPracticeCriteriaObjectCopyWith<$Res> {
  factory $ParentPracticeCriteriaObjectCopyWith(
          ParentPracticeCriteriaObject value,
          $Res Function(ParentPracticeCriteriaObject) then) =
      _$ParentPracticeCriteriaObjectCopyWithImpl<$Res,
          ParentPracticeCriteriaObject>;
  @useResult
  $Res call({int? id, String? typeCriteriaName, int? totalScore});
}

/// @nodoc
class _$ParentPracticeCriteriaObjectCopyWithImpl<$Res,
        $Val extends ParentPracticeCriteriaObject>
    implements $ParentPracticeCriteriaObjectCopyWith<$Res> {
  _$ParentPracticeCriteriaObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? typeCriteriaName = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeCriteriaName: freezed == typeCriteriaName
          ? _value.typeCriteriaName
          : typeCriteriaName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParentPracticeCriteriaObjectCopyWith<$Res>
    implements $ParentPracticeCriteriaObjectCopyWith<$Res> {
  factory _$$_ParentPracticeCriteriaObjectCopyWith(
          _$_ParentPracticeCriteriaObject value,
          $Res Function(_$_ParentPracticeCriteriaObject) then) =
      __$$_ParentPracticeCriteriaObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? typeCriteriaName, int? totalScore});
}

/// @nodoc
class __$$_ParentPracticeCriteriaObjectCopyWithImpl<$Res>
    extends _$ParentPracticeCriteriaObjectCopyWithImpl<$Res,
        _$_ParentPracticeCriteriaObject>
    implements _$$_ParentPracticeCriteriaObjectCopyWith<$Res> {
  __$$_ParentPracticeCriteriaObjectCopyWithImpl(
      _$_ParentPracticeCriteriaObject _value,
      $Res Function(_$_ParentPracticeCriteriaObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? typeCriteriaName = freezed,
    Object? totalScore = freezed,
  }) {
    return _then(_$_ParentPracticeCriteriaObject(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      typeCriteriaName: freezed == typeCriteriaName
          ? _value.typeCriteriaName
          : typeCriteriaName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParentPracticeCriteriaObject implements _ParentPracticeCriteriaObject {
  _$_ParentPracticeCriteriaObject(
      {this.id, this.typeCriteriaName, this.totalScore});

  factory _$_ParentPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =>
      _$$_ParentPracticeCriteriaObjectFromJson(json);

  @override
  final int? id;
  @override
  final String? typeCriteriaName;
  @override
  final int? totalScore;

  @override
  String toString() {
    return 'ParentPracticeCriteriaObject(id: $id, typeCriteriaName: $typeCriteriaName, totalScore: $totalScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParentPracticeCriteriaObject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeCriteriaName, typeCriteriaName) ||
                other.typeCriteriaName == typeCriteriaName) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, typeCriteriaName, totalScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParentPracticeCriteriaObjectCopyWith<_$_ParentPracticeCriteriaObject>
      get copyWith => __$$_ParentPracticeCriteriaObjectCopyWithImpl<
          _$_ParentPracticeCriteriaObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParentPracticeCriteriaObjectToJson(
      this,
    );
  }
}

abstract class _ParentPracticeCriteriaObject
    implements ParentPracticeCriteriaObject {
  factory _ParentPracticeCriteriaObject(
      {final int? id,
      final String? typeCriteriaName,
      final int? totalScore}) = _$_ParentPracticeCriteriaObject;

  factory _ParentPracticeCriteriaObject.fromJson(Map<String, dynamic> json) =
      _$_ParentPracticeCriteriaObject.fromJson;

  @override
  int? get id;
  @override
  String? get typeCriteriaName;
  @override
  int? get totalScore;
  @override
  @JsonKey(ignore: true)
  _$$_ParentPracticeCriteriaObjectCopyWith<_$_ParentPracticeCriteriaObject>
      get copyWith => throw _privateConstructorUsedError;
}