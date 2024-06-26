// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_process_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkingProcessResponse _$WorkingProcessResponseFromJson(
    Map<String, dynamic> json) {
  return _WorkingProcessResponse.fromJson(json);
}

/// @nodoc
mixin _$WorkingProcessResponse {
  int? get id => throw _privateConstructorUsedError;
  DateTime? get fromdate => throw _privateConstructorUsedError;
  DateTime? get todate => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get workplace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingProcessResponseCopyWith<WorkingProcessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingProcessResponseCopyWith<$Res> {
  factory $WorkingProcessResponseCopyWith(WorkingProcessResponse value,
          $Res Function(WorkingProcessResponse) then) =
      _$WorkingProcessResponseCopyWithImpl<$Res, WorkingProcessResponse>;
  @useResult
  $Res call(
      {int? id,
      DateTime? fromdate,
      DateTime? todate,
      String? position,
      String? workplace});
}

/// @nodoc
class _$WorkingProcessResponseCopyWithImpl<$Res,
        $Val extends WorkingProcessResponse>
    implements $WorkingProcessResponseCopyWith<$Res> {
  _$WorkingProcessResponseCopyWithImpl(this._value, this._then);

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
    Object? position = freezed,
    Object? workplace = freezed,
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
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      workplace: freezed == workplace
          ? _value.workplace
          : workplace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingProcessResponseImplCopyWith<$Res>
    implements $WorkingProcessResponseCopyWith<$Res> {
  factory _$$WorkingProcessResponseImplCopyWith(
          _$WorkingProcessResponseImpl value,
          $Res Function(_$WorkingProcessResponseImpl) then) =
      __$$WorkingProcessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime? fromdate,
      DateTime? todate,
      String? position,
      String? workplace});
}

/// @nodoc
class __$$WorkingProcessResponseImplCopyWithImpl<$Res>
    extends _$WorkingProcessResponseCopyWithImpl<$Res,
        _$WorkingProcessResponseImpl>
    implements _$$WorkingProcessResponseImplCopyWith<$Res> {
  __$$WorkingProcessResponseImplCopyWithImpl(
      _$WorkingProcessResponseImpl _value,
      $Res Function(_$WorkingProcessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromdate = freezed,
    Object? todate = freezed,
    Object? position = freezed,
    Object? workplace = freezed,
  }) {
    return _then(_$WorkingProcessResponseImpl(
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
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      workplace: freezed == workplace
          ? _value.workplace
          : workplace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingProcessResponseImpl implements _WorkingProcessResponse {
  const _$WorkingProcessResponseImpl(
      {this.id, this.fromdate, this.todate, this.position, this.workplace});

  factory _$WorkingProcessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingProcessResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final DateTime? fromdate;
  @override
  final DateTime? todate;
  @override
  final String? position;
  @override
  final String? workplace;

  @override
  String toString() {
    return 'WorkingProcessResponse(id: $id, fromdate: $fromdate, todate: $todate, position: $position, workplace: $workplace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingProcessResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromdate, fromdate) ||
                other.fromdate == fromdate) &&
            (identical(other.todate, todate) || other.todate == todate) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.workplace, workplace) ||
                other.workplace == workplace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fromdate, todate, position, workplace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingProcessResponseImplCopyWith<_$WorkingProcessResponseImpl>
      get copyWith => __$$WorkingProcessResponseImplCopyWithImpl<
          _$WorkingProcessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingProcessResponseImplToJson(
      this,
    );
  }
}

abstract class _WorkingProcessResponse implements WorkingProcessResponse {
  const factory _WorkingProcessResponse(
      {final int? id,
      final DateTime? fromdate,
      final DateTime? todate,
      final String? position,
      final String? workplace}) = _$WorkingProcessResponseImpl;

  factory _WorkingProcessResponse.fromJson(Map<String, dynamic> json) =
      _$WorkingProcessResponseImpl.fromJson;

  @override
  int? get id;
  @override
  DateTime? get fromdate;
  @override
  DateTime? get todate;
  @override
  String? get position;
  @override
  String? get workplace;
  @override
  @JsonKey(ignore: true)
  _$$WorkingProcessResponseImplCopyWith<_$WorkingProcessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
