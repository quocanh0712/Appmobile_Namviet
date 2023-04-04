// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_process_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_LearningProcessResponseCopyWith<$Res>
    implements $LearningProcessResponseCopyWith<$Res> {
  factory _$$_LearningProcessResponseCopyWith(_$_LearningProcessResponse value,
          $Res Function(_$_LearningProcessResponse) then) =
      __$$_LearningProcessResponseCopyWithImpl<$Res>;
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
class __$$_LearningProcessResponseCopyWithImpl<$Res>
    extends _$LearningProcessResponseCopyWithImpl<$Res,
        _$_LearningProcessResponse>
    implements _$$_LearningProcessResponseCopyWith<$Res> {
  __$$_LearningProcessResponseCopyWithImpl(_$_LearningProcessResponse _value,
      $Res Function(_$_LearningProcessResponse) _then)
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
    return _then(_$_LearningProcessResponse(
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
class _$_LearningProcessResponse implements _LearningProcessResponse {
  const _$_LearningProcessResponse(
      {this.id, this.fromdate, this.todate, this.major, this.trainingplace});

  factory _$_LearningProcessResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LearningProcessResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningProcessResponse &&
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
  _$$_LearningProcessResponseCopyWith<_$_LearningProcessResponse>
      get copyWith =>
          __$$_LearningProcessResponseCopyWithImpl<_$_LearningProcessResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningProcessResponseToJson(
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
      final String? trainingplace}) = _$_LearningProcessResponse;

  factory _LearningProcessResponse.fromJson(Map<String, dynamic> json) =
      _$_LearningProcessResponse.fromJson;

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
  _$$_LearningProcessResponseCopyWith<_$_LearningProcessResponse>
      get copyWith => throw _privateConstructorUsedError;
}
