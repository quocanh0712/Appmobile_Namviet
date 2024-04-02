// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_process_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LearningProcessResponse _$LearningProcessResponseFromJson(
    Map<String, dynamic> json) {
  return _LearningProcessResponse.fromJson(json);
}

/// @nodoc
mixin _$LearningProcessResponse {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get fromdate => throw _privateConstructorUsedError;
  DateTime? get todate => throw _privateConstructorUsedError;
  String? get major => throw _privateConstructorUsedError;
  String? get trainingplace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningProcessResponseCopyWith<LearningProcessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningProcessResponseCopyWith<$Res> {
  factory $LearningProcessResponseCopyWith(LearningProcessResponse value,
          $Res Function(LearningProcessResponse) then) =
      _$LearningProcessResponseCopyWithImpl<$Res, LearningProcessResponse>;
  @useResult
  $Res call(
      {int? id,
      DateTime? fromdate,
      DateTime? todate,
      String? major,
      String? trainingplace});
}

/// @nodoc
class _$LearningProcessResponseCopyWithImpl<$Res,
        $Val extends LearningProcessResponse>
    implements $LearningProcessResponseCopyWith<$Res> {
  _$LearningProcessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromdate = freezed,
    Object? todate = freezed,
    Object? major = freezed,
    Object? trainingplace = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fromdate: freezed == fromdate
          ? _value.fromdate
          : fromdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todate: freezed == todate
          ? _value.todate
          : todate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingplace: freezed == trainingplace
          ? _value.trainingplace
          : trainingplace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningProcessResponseImplCopyWith<$Res>
    implements $LearningProcessResponseCopyWith<$Res> {
  factory _$$LearningProcessResponseImplCopyWith(
          _$LearningProcessResponseImpl value,
          $Res Function(_$LearningProcessResponseImpl) then) =
      __$$LearningProcessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? fromdate,
      DateTime? todate,
      String? major,
      String? trainingplace});
}

/// @nodoc
class __$$LearningProcessResponseImplCopyWithImpl<$Res>
    extends _$LearningProcessResponseCopyWithImpl<$Res,
        _$LearningProcessResponseImpl>
    implements _$$LearningProcessResponseImplCopyWith<$Res> {
  __$$LearningProcessResponseImplCopyWithImpl(
      _$LearningProcessResponseImpl _value,
      $Res Function(_$LearningProcessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromdate = freezed,
    Object? todate = freezed,
    Object? major = freezed,
    Object? trainingplace = freezed,
  }) {
    return _then(_$LearningProcessResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fromdate: freezed == fromdate
          ? _value.fromdate
          : fromdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todate: freezed == todate
          ? _value.todate
          : todate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingplace: freezed == trainingplace
          ? _value.trainingplace
          : trainingplace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningProcessResponseImpl implements _LearningProcessResponse {
  const _$LearningProcessResponseImpl(
      {this.id, this.fromdate, this.todate, this.major, this.trainingplace});

  factory _$LearningProcessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningProcessResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? fromdate;
  @override
  final DateTime? todate;
  @override
  final String? major;
  @override
  final String? trainingplace;

  @override
  String toString() {
    return 'LearningProcessResponse(id: $id, fromdate: $fromdate, todate: $todate, major: $major, trainingplace: $trainingplace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningProcessResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromdate, fromdate) ||
                other.fromdate == fromdate) &&
            (identical(other.todate, todate) || other.todate == todate) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.trainingplace, trainingplace) ||
                other.trainingplace == trainingplace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fromdate, todate, major, trainingplace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningProcessResponseImplCopyWith<_$LearningProcessResponseImpl>
      get copyWith => __$$LearningProcessResponseImplCopyWithImpl<
          _$LearningProcessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningProcessResponseImplToJson(
      this,
    );
  }
}

abstract class _LearningProcessResponse implements LearningProcessResponse {
  const factory _LearningProcessResponse(
      {final int? id,
      final DateTime? fromdate,
      final DateTime? todate,
      final String? major,
      final String? trainingplace}) = _$LearningProcessResponseImpl;

  factory _LearningProcessResponse.fromJson(Map<String, dynamic> json) =
      _$LearningProcessResponseImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get fromdate;
  @override
  DateTime? get todate;
  @override
  String? get major;
  @override
  String? get trainingplace;
  @override
  @JsonKey(ignore: true)
  _$$LearningProcessResponseImplCopyWith<_$LearningProcessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
