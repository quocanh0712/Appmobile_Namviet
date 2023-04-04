// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'practice_point_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PracticePointResponseObject _$PracticePointResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _PracticePointResponseObject.fromJson(json);
}

/// @nodoc
mixin _$PracticePointResponseObject {
  int? get sum => throw _privateConstructorUsedError;
  double? get rank => throw _privateConstructorUsedError;
  List<ParentPracticeCriteriaObject?>? get criterias =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PracticePointResponseObjectCopyWith<PracticePointResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticePointResponseObjectCopyWith<$Res> {
  factory $PracticePointResponseObjectCopyWith(
          PracticePointResponseObject value,
          $Res Function(PracticePointResponseObject) then) =
      _$PracticePointResponseObjectCopyWithImpl<$Res,
          PracticePointResponseObject>;
  @useResult
  $Res call(
      {int? sum, double? rank, List<ParentPracticeCriteriaObject?>? criterias});
}

/// @nodoc
class _$PracticePointResponseObjectCopyWithImpl<$Res,
        $Val extends PracticePointResponseObject>
    implements $PracticePointResponseObjectCopyWith<$Res> {
  _$PracticePointResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sum = freezed,
    Object? rank = freezed,
    Object? criterias = freezed,
  }) {
    return _then(_value.copyWith(
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as double?,
      criterias: freezed == criterias
          ? _value.criterias
          : criterias // ignore: cast_nullable_to_non_nullable
              as List<ParentPracticeCriteriaObject?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PracticePointResponseObjectCopyWith<$Res>
    implements $PracticePointResponseObjectCopyWith<$Res> {
  factory _$$_PracticePointResponseObjectCopyWith(
          _$_PracticePointResponseObject value,
          $Res Function(_$_PracticePointResponseObject) then) =
      __$$_PracticePointResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? sum, double? rank, List<ParentPracticeCriteriaObject?>? criterias});
}

/// @nodoc
class __$$_PracticePointResponseObjectCopyWithImpl<$Res>
    extends _$PracticePointResponseObjectCopyWithImpl<$Res,
        _$_PracticePointResponseObject>
    implements _$$_PracticePointResponseObjectCopyWith<$Res> {
  __$$_PracticePointResponseObjectCopyWithImpl(
      _$_PracticePointResponseObject _value,
      $Res Function(_$_PracticePointResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sum = freezed,
    Object? rank = freezed,
    Object? criterias = freezed,
  }) {
    return _then(_$_PracticePointResponseObject(
      sum: freezed == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as double?,
      criterias: freezed == criterias
          ? _value._criterias
          : criterias // ignore: cast_nullable_to_non_nullable
              as List<ParentPracticeCriteriaObject?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PracticePointResponseObject implements _PracticePointResponseObject {
  _$_PracticePointResponseObject(
      {this.sum,
      this.rank,
      final List<ParentPracticeCriteriaObject?>? criterias})
      : _criterias = criterias;

  factory _$_PracticePointResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_PracticePointResponseObjectFromJson(json);

  @override
  final int? sum;
  @override
  final double? rank;
  final List<ParentPracticeCriteriaObject?>? _criterias;
  @override
  List<ParentPracticeCriteriaObject?>? get criterias {
    final value = _criterias;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PracticePointResponseObject(sum: $sum, rank: $rank, criterias: $criterias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PracticePointResponseObject &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            const DeepCollectionEquality()
                .equals(other._criterias, _criterias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sum, rank, const DeepCollectionEquality().hash(_criterias));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PracticePointResponseObjectCopyWith<_$_PracticePointResponseObject>
      get copyWith => __$$_PracticePointResponseObjectCopyWithImpl<
          _$_PracticePointResponseObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PracticePointResponseObjectToJson(
      this,
    );
  }
}

abstract class _PracticePointResponseObject
    implements PracticePointResponseObject {
  factory _PracticePointResponseObject(
          {final int? sum,
          final double? rank,
          final List<ParentPracticeCriteriaObject?>? criterias}) =
      _$_PracticePointResponseObject;

  factory _PracticePointResponseObject.fromJson(Map<String, dynamic> json) =
      _$_PracticePointResponseObject.fromJson;

  @override
  int? get sum;
  @override
  double? get rank;
  @override
  List<ParentPracticeCriteriaObject?>? get criterias;
  @override
  @JsonKey(ignore: true)
  _$$_PracticePointResponseObjectCopyWith<_$_PracticePointResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}
