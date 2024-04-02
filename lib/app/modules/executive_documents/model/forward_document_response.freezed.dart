// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forward_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForwardDocumentResponse _$ForwardDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _ForwardDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$ForwardDocumentResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get TrichYeu => throw _privateConstructorUsedError;
  String? get NgayBanHanh => throw _privateConstructorUsedError;
  String? get SoDi => throw _privateConstructorUsedError;
  String? get TrangThai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForwardDocumentResponseCopyWith<ForwardDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardDocumentResponseCopyWith<$Res> {
  factory $ForwardDocumentResponseCopyWith(ForwardDocumentResponse value,
          $Res Function(ForwardDocumentResponse) then) =
      _$ForwardDocumentResponseCopyWithImpl<$Res, ForwardDocumentResponse>;
  @useResult
  $Res call(
      {int? id,
      String? TrichYeu,
      String? NgayBanHanh,
      String? SoDi,
      String? TrangThai});
}

/// @nodoc
class _$ForwardDocumentResponseCopyWithImpl<$Res,
        $Val extends ForwardDocumentResponse>
    implements $ForwardDocumentResponseCopyWith<$Res> {
  _$ForwardDocumentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? TrichYeu = freezed,
    Object? NgayBanHanh = freezed,
    Object? SoDi = freezed,
    Object? TrangThai = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      TrichYeu: freezed == TrichYeu
          ? _value.TrichYeu
          : TrichYeu // ignore: cast_nullable_to_non_nullable
              as String?,
      NgayBanHanh: freezed == NgayBanHanh
          ? _value.NgayBanHanh
          : NgayBanHanh // ignore: cast_nullable_to_non_nullable
              as String?,
      SoDi: freezed == SoDi
          ? _value.SoDi
          : SoDi // ignore: cast_nullable_to_non_nullable
              as String?,
      TrangThai: freezed == TrangThai
          ? _value.TrangThai
          : TrangThai // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForwardDocumentResponseImplCopyWith<$Res>
    implements $ForwardDocumentResponseCopyWith<$Res> {
  factory _$$ForwardDocumentResponseImplCopyWith(
          _$ForwardDocumentResponseImpl value,
          $Res Function(_$ForwardDocumentResponseImpl) then) =
      __$$ForwardDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? TrichYeu,
      String? NgayBanHanh,
      String? SoDi,
      String? TrangThai});
}

/// @nodoc
class __$$ForwardDocumentResponseImplCopyWithImpl<$Res>
    extends _$ForwardDocumentResponseCopyWithImpl<$Res,
        _$ForwardDocumentResponseImpl>
    implements _$$ForwardDocumentResponseImplCopyWith<$Res> {
  __$$ForwardDocumentResponseImplCopyWithImpl(
      _$ForwardDocumentResponseImpl _value,
      $Res Function(_$ForwardDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? TrichYeu = freezed,
    Object? NgayBanHanh = freezed,
    Object? SoDi = freezed,
    Object? TrangThai = freezed,
  }) {
    return _then(_$ForwardDocumentResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      TrichYeu: freezed == TrichYeu
          ? _value.TrichYeu
          : TrichYeu // ignore: cast_nullable_to_non_nullable
              as String?,
      NgayBanHanh: freezed == NgayBanHanh
          ? _value.NgayBanHanh
          : NgayBanHanh // ignore: cast_nullable_to_non_nullable
              as String?,
      SoDi: freezed == SoDi
          ? _value.SoDi
          : SoDi // ignore: cast_nullable_to_non_nullable
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
class _$ForwardDocumentResponseImpl implements _ForwardDocumentResponse {
  const _$ForwardDocumentResponseImpl(
      {this.id, this.TrichYeu, this.NgayBanHanh, this.SoDi, this.TrangThai});

  factory _$ForwardDocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForwardDocumentResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? TrichYeu;
  @override
  final String? NgayBanHanh;
  @override
  final String? SoDi;
  @override
  final String? TrangThai;

  @override
  String toString() {
    return 'ForwardDocumentResponse(id: $id, TrichYeu: $TrichYeu, NgayBanHanh: $NgayBanHanh, SoDi: $SoDi, TrangThai: $TrangThai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForwardDocumentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.TrichYeu, TrichYeu) ||
                other.TrichYeu == TrichYeu) &&
            (identical(other.NgayBanHanh, NgayBanHanh) ||
                other.NgayBanHanh == NgayBanHanh) &&
            (identical(other.SoDi, SoDi) || other.SoDi == SoDi) &&
            (identical(other.TrangThai, TrangThai) ||
                other.TrangThai == TrangThai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, TrichYeu, NgayBanHanh, SoDi, TrangThai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForwardDocumentResponseImplCopyWith<_$ForwardDocumentResponseImpl>
      get copyWith => __$$ForwardDocumentResponseImplCopyWithImpl<
          _$ForwardDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForwardDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _ForwardDocumentResponse implements ForwardDocumentResponse {
  const factory _ForwardDocumentResponse(
      {final int? id,
      final String? TrichYeu,
      final String? NgayBanHanh,
      final String? SoDi,
      final String? TrangThai}) = _$ForwardDocumentResponseImpl;

  factory _ForwardDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$ForwardDocumentResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get TrichYeu;
  @override
  String? get NgayBanHanh;
  @override
  String? get SoDi;
  @override
  String? get TrangThai;
  @override
  @JsonKey(ignore: true)
  _$$ForwardDocumentResponseImplCopyWith<_$ForwardDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
