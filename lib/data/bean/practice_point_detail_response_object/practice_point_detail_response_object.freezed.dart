// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_point_detail_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PracticePointDetailResponseObject _$PracticePointDetailResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _PracticePointDetailResponseObject.fromJson(json);
}

/// @nodoc
mixin _$PracticePointDetailResponseObject {
  int? get id => throw _privateConstructorUsedError;
  String? get criteriaName => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  List<ChildPracticeCriteriaObject>? get criterias =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PracticePointDetailResponseObjectCopyWith<PracticePointDetailResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticePointDetailResponseObjectCopyWith<$Res> {
  factory $PracticePointDetailResponseObjectCopyWith(
          PracticePointDetailResponseObject value,
          $Res Function(PracticePointDetailResponseObject) then) =
      _$PracticePointDetailResponseObjectCopyWithImpl<$Res,
          PracticePointDetailResponseObject>;
  @useResult
  $Res call(
      {int? id,
      String? criteriaName,
      int? score,
      List<ChildPracticeCriteriaObject>? criterias});
}

/// @nodoc
class _$PracticePointDetailResponseObjectCopyWithImpl<$Res,
        $Val extends PracticePointDetailResponseObject>
    implements $PracticePointDetailResponseObjectCopyWith<$Res> {
  _$PracticePointDetailResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? criteriaName = freezed,
    Object? score = freezed,
    Object? criterias = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      criteriaName: freezed == criteriaName
          ? _value.criteriaName
          : criteriaName // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      criterias: freezed == criterias
          ? _value.criterias
          : criterias // ignore: cast_nullable_to_non_nullable
              as List<ChildPracticeCriteriaObject>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticePointDetailResponseObjectImplCopyWith<$Res>
    implements $PracticePointDetailResponseObjectCopyWith<$Res> {
  factory _$$PracticePointDetailResponseObjectImplCopyWith(
          _$PracticePointDetailResponseObjectImpl value,
          $Res Function(_$PracticePointDetailResponseObjectImpl) then) =
      __$$PracticePointDetailResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? criteriaName,
      int? score,
      List<ChildPracticeCriteriaObject>? criterias});
}

/// @nodoc
class __$$PracticePointDetailResponseObjectImplCopyWithImpl<$Res>
    extends _$PracticePointDetailResponseObjectCopyWithImpl<$Res,
        _$PracticePointDetailResponseObjectImpl>
    implements _$$PracticePointDetailResponseObjectImplCopyWith<$Res> {
  __$$PracticePointDetailResponseObjectImplCopyWithImpl(
      _$PracticePointDetailResponseObjectImpl _value,
      $Res Function(_$PracticePointDetailResponseObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? criteriaName = freezed,
    Object? score = freezed,
    Object? criterias = freezed,
  }) {
    return _then(_$PracticePointDetailResponseObjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      criteriaName: freezed == criteriaName
          ? _value.criteriaName
          : criteriaName // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      criterias: freezed == criterias
          ? _value._criterias
          : criterias // ignore: cast_nullable_to_non_nullable
              as List<ChildPracticeCriteriaObject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PracticePointDetailResponseObjectImpl
    implements _PracticePointDetailResponseObject {
  _$PracticePointDetailResponseObjectImpl(
      {this.id,
      this.criteriaName,
      this.score,
      final List<ChildPracticeCriteriaObject>? criterias})
      : _criterias = criterias;

  factory _$PracticePointDetailResponseObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PracticePointDetailResponseObjectImplFromJson(json);

  @override
  final int? id;
  @override
  final String? criteriaName;
  @override
  final int? score;
  final List<ChildPracticeCriteriaObject>? _criterias;
  @override
  List<ChildPracticeCriteriaObject>? get criterias {
    final value = _criterias;
    if (value == null) return null;
    if (_criterias is EqualUnmodifiableListView) return _criterias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PracticePointDetailResponseObject(id: $id, criteriaName: $criteriaName, score: $score, criterias: $criterias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticePointDetailResponseObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.criteriaName, criteriaName) ||
                other.criteriaName == criteriaName) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._criterias, _criterias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, criteriaName, score,
      const DeepCollectionEquality().hash(_criterias));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticePointDetailResponseObjectImplCopyWith<
          _$PracticePointDetailResponseObjectImpl>
      get copyWith => __$$PracticePointDetailResponseObjectImplCopyWithImpl<
          _$PracticePointDetailResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticePointDetailResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _PracticePointDetailResponseObject
    implements PracticePointDetailResponseObject {
  factory _PracticePointDetailResponseObject(
          {final int? id,
          final String? criteriaName,
          final int? score,
          final List<ChildPracticeCriteriaObject>? criterias}) =
      _$PracticePointDetailResponseObjectImpl;

  factory _PracticePointDetailResponseObject.fromJson(
          Map<String, dynamic> json) =
      _$PracticePointDetailResponseObjectImpl.fromJson;

  @override
  int? get id;
  @override
  String? get criteriaName;
  @override
  int? get score;
  @override
  List<ChildPracticeCriteriaObject>? get criterias;
  @override
  @JsonKey(ignore: true)
  _$$PracticePointDetailResponseObjectImplCopyWith<
          _$PracticePointDetailResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
