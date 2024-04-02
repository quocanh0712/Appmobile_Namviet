// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_point_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$PracticePointResponseObjectImplCopyWith<$Res>
    implements $PracticePointResponseObjectCopyWith<$Res> {
  factory _$$PracticePointResponseObjectImplCopyWith(
          _$PracticePointResponseObjectImpl value,
          $Res Function(_$PracticePointResponseObjectImpl) then) =
      __$$PracticePointResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? sum, double? rank, List<ParentPracticeCriteriaObject?>? criterias});
}

/// @nodoc
class __$$PracticePointResponseObjectImplCopyWithImpl<$Res>
    extends _$PracticePointResponseObjectCopyWithImpl<$Res,
        _$PracticePointResponseObjectImpl>
    implements _$$PracticePointResponseObjectImplCopyWith<$Res> {
  __$$PracticePointResponseObjectImplCopyWithImpl(
      _$PracticePointResponseObjectImpl _value,
      $Res Function(_$PracticePointResponseObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sum = freezed,
    Object? rank = freezed,
    Object? criterias = freezed,
  }) {
    return _then(_$PracticePointResponseObjectImpl(
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
class _$PracticePointResponseObjectImpl
    implements _PracticePointResponseObject {
  _$PracticePointResponseObjectImpl(
      {this.sum,
      this.rank,
      final List<ParentPracticeCriteriaObject?>? criterias})
      : _criterias = criterias;

  factory _$PracticePointResponseObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PracticePointResponseObjectImplFromJson(json);

  @override
  final int? sum;
  @override
  final double? rank;
  final List<ParentPracticeCriteriaObject?>? _criterias;
  @override
  List<ParentPracticeCriteriaObject?>? get criterias {
    final value = _criterias;
    if (value == null) return null;
    if (_criterias is EqualUnmodifiableListView) return _criterias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PracticePointResponseObject(sum: $sum, rank: $rank, criterias: $criterias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticePointResponseObjectImpl &&
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
  _$$PracticePointResponseObjectImplCopyWith<_$PracticePointResponseObjectImpl>
      get copyWith => __$$PracticePointResponseObjectImplCopyWithImpl<
          _$PracticePointResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticePointResponseObjectImplToJson(
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
      _$PracticePointResponseObjectImpl;

  factory _PracticePointResponseObject.fromJson(Map<String, dynamic> json) =
      _$PracticePointResponseObjectImpl.fromJson;

  @override
  int? get sum;
  @override
  double? get rank;
  @override
  List<ParentPracticeCriteriaObject?>? get criterias;
  @override
  @JsonKey(ignore: true)
  _$$PracticePointResponseObjectImplCopyWith<_$PracticePointResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
