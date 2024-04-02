// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportTaskResponse _$ReportTaskResponseFromJson(Map<String, dynamic> json) {
  return _ReportTaskResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportTaskResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get VanBan => throw _privateConstructorUsedError;
  String? get NoiDung => throw _privateConstructorUsedError;
  String? get TrangThai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportTaskResponseCopyWith<ReportTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportTaskResponseCopyWith<$Res> {
  factory $ReportTaskResponseCopyWith(
          ReportTaskResponse value, $Res Function(ReportTaskResponse) then) =
      _$ReportTaskResponseCopyWithImpl<$Res, ReportTaskResponse>;
  @useResult
  $Res call({int? id, String? VanBan, String? NoiDung, String? TrangThai});
}

/// @nodoc
class _$ReportTaskResponseCopyWithImpl<$Res, $Val extends ReportTaskResponse>
    implements $ReportTaskResponseCopyWith<$Res> {
  _$ReportTaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? VanBan = freezed,
    Object? NoiDung = freezed,
    Object? TrangThai = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      VanBan: freezed == VanBan
          ? _value.VanBan
          : VanBan // ignore: cast_nullable_to_non_nullable
              as String?,
      NoiDung: freezed == NoiDung
          ? _value.NoiDung
          : NoiDung // ignore: cast_nullable_to_non_nullable
              as String?,
      TrangThai: freezed == TrangThai
          ? _value.TrangThai
          : TrangThai // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportTaskResponseImplCopyWith<$Res>
    implements $ReportTaskResponseCopyWith<$Res> {
  factory _$$ReportTaskResponseImplCopyWith(_$ReportTaskResponseImpl value,
          $Res Function(_$ReportTaskResponseImpl) then) =
      __$$ReportTaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? VanBan, String? NoiDung, String? TrangThai});
}

/// @nodoc
class __$$ReportTaskResponseImplCopyWithImpl<$Res>
    extends _$ReportTaskResponseCopyWithImpl<$Res, _$ReportTaskResponseImpl>
    implements _$$ReportTaskResponseImplCopyWith<$Res> {
  __$$ReportTaskResponseImplCopyWithImpl(_$ReportTaskResponseImpl _value,
      $Res Function(_$ReportTaskResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? VanBan = freezed,
    Object? NoiDung = freezed,
    Object? TrangThai = freezed,
  }) {
    return _then(_$ReportTaskResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      VanBan: freezed == VanBan
          ? _value.VanBan
          : VanBan // ignore: cast_nullable_to_non_nullable
              as String?,
      NoiDung: freezed == NoiDung
          ? _value.NoiDung
          : NoiDung // ignore: cast_nullable_to_non_nullable
              as String?,
      TrangThai: freezed == TrangThai
          ? _value.TrangThai
          : TrangThai // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportTaskResponseImpl implements _ReportTaskResponse {
  const _$ReportTaskResponseImpl(
      {this.id, this.VanBan, this.NoiDung, this.TrangThai});

  factory _$ReportTaskResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportTaskResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? VanBan;
  @override
  final String? NoiDung;
  @override
  final String? TrangThai;

  @override
  String toString() {
    return 'ReportTaskResponse(id: $id, VanBan: $VanBan, NoiDung: $NoiDung, TrangThai: $TrangThai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportTaskResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.VanBan, VanBan) || other.VanBan == VanBan) &&
            (identical(other.NoiDung, NoiDung) || other.NoiDung == NoiDung) &&
            (identical(other.TrangThai, TrangThai) ||
                other.TrangThai == TrangThai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, VanBan, NoiDung, TrangThai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportTaskResponseImplCopyWith<_$ReportTaskResponseImpl> get copyWith =>
      __$$ReportTaskResponseImplCopyWithImpl<_$ReportTaskResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportTaskResponseImplToJson(
      this,
    );
  }
}

abstract class _ReportTaskResponse implements ReportTaskResponse {
  const factory _ReportTaskResponse(
      {final int? id,
      final String? VanBan,
      final String? NoiDung,
      final String? TrangThai}) = _$ReportTaskResponseImpl;

  factory _ReportTaskResponse.fromJson(Map<String, dynamic> json) =
      _$ReportTaskResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get VanBan;
  @override
  String? get NoiDung;
  @override
  String? get TrangThai;
  @override
  @JsonKey(ignore: true)
  _$$ReportTaskResponseImplCopyWith<_$ReportTaskResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
