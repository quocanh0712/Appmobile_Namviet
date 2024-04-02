// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailResponse _$EmailResponseFromJson(Map<String, dynamic> json) {
  return _EmailResponse.fromJson(json);
}

/// @nodoc
mixin _$EmailResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get NguoiGui => throw _privateConstructorUsedError;
  String? get TieuDe => throw _privateConstructorUsedError;
  String? get ThoiGian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailResponseCopyWith<EmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailResponseCopyWith<$Res> {
  factory $EmailResponseCopyWith(
          EmailResponse value, $Res Function(EmailResponse) then) =
      _$EmailResponseCopyWithImpl<$Res, EmailResponse>;
  @useResult
  $Res call({int? id, String? NguoiGui, String? TieuDe, String? ThoiGian});
}

/// @nodoc
class _$EmailResponseCopyWithImpl<$Res, $Val extends EmailResponse>
    implements $EmailResponseCopyWith<$Res> {
  _$EmailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? NguoiGui = freezed,
    Object? TieuDe = freezed,
    Object? ThoiGian = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      NguoiGui: freezed == NguoiGui
          ? _value.NguoiGui
          : NguoiGui // ignore: cast_nullable_to_non_nullable
              as String?,
      TieuDe: freezed == TieuDe
          ? _value.TieuDe
          : TieuDe // ignore: cast_nullable_to_non_nullable
              as String?,
      ThoiGian: freezed == ThoiGian
          ? _value.ThoiGian
          : ThoiGian // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailResponseImplCopyWith<$Res>
    implements $EmailResponseCopyWith<$Res> {
  factory _$$EmailResponseImplCopyWith(
          _$EmailResponseImpl value, $Res Function(_$EmailResponseImpl) then) =
      __$$EmailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? NguoiGui, String? TieuDe, String? ThoiGian});
}

/// @nodoc
class __$$EmailResponseImplCopyWithImpl<$Res>
    extends _$EmailResponseCopyWithImpl<$Res, _$EmailResponseImpl>
    implements _$$EmailResponseImplCopyWith<$Res> {
  __$$EmailResponseImplCopyWithImpl(
      _$EmailResponseImpl _value, $Res Function(_$EmailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? NguoiGui = freezed,
    Object? TieuDe = freezed,
    Object? ThoiGian = freezed,
  }) {
    return _then(_$EmailResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      NguoiGui: freezed == NguoiGui
          ? _value.NguoiGui
          : NguoiGui // ignore: cast_nullable_to_non_nullable
              as String?,
      TieuDe: freezed == TieuDe
          ? _value.TieuDe
          : TieuDe // ignore: cast_nullable_to_non_nullable
              as String?,
      ThoiGian: freezed == ThoiGian
          ? _value.ThoiGian
          : ThoiGian // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailResponseImpl implements _EmailResponse {
  const _$EmailResponseImpl(
      {this.id, this.NguoiGui, this.TieuDe, this.ThoiGian});

  factory _$EmailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? NguoiGui;
  @override
  final String? TieuDe;
  @override
  final String? ThoiGian;

  @override
  String toString() {
    return 'EmailResponse(id: $id, NguoiGui: $NguoiGui, TieuDe: $TieuDe, ThoiGian: $ThoiGian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.NguoiGui, NguoiGui) ||
                other.NguoiGui == NguoiGui) &&
            (identical(other.TieuDe, TieuDe) || other.TieuDe == TieuDe) &&
            (identical(other.ThoiGian, ThoiGian) ||
                other.ThoiGian == ThoiGian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, NguoiGui, TieuDe, ThoiGian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailResponseImplCopyWith<_$EmailResponseImpl> get copyWith =>
      __$$EmailResponseImplCopyWithImpl<_$EmailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailResponseImplToJson(
      this,
    );
  }
}

abstract class _EmailResponse implements EmailResponse {
  const factory _EmailResponse(
      {final int? id,
      final String? NguoiGui,
      final String? TieuDe,
      final String? ThoiGian}) = _$EmailResponseImpl;

  factory _EmailResponse.fromJson(Map<String, dynamic> json) =
      _$EmailResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get NguoiGui;
  @override
  String? get TieuDe;
  @override
  String? get ThoiGian;
  @override
  @JsonKey(ignore: true)
  _$$EmailResponseImplCopyWith<_$EmailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
