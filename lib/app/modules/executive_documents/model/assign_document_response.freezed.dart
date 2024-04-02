// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignDocumentResponse _$AssignDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _AssignDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$AssignDocumentResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get TrichYeu => throw _privateConstructorUsedError;
  String? get NgayBanHanh => throw _privateConstructorUsedError;
  String? get DonVi => throw _privateConstructorUsedError;
  String? get TrangThai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignDocumentResponseCopyWith<AssignDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignDocumentResponseCopyWith<$Res> {
  factory $AssignDocumentResponseCopyWith(AssignDocumentResponse value,
          $Res Function(AssignDocumentResponse) then) =
      _$AssignDocumentResponseCopyWithImpl<$Res, AssignDocumentResponse>;
  @useResult
  $Res call(
      {int? id,
      String? TrichYeu,
      String? NgayBanHanh,
      String? DonVi,
      String? TrangThai});
}

/// @nodoc
class _$AssignDocumentResponseCopyWithImpl<$Res,
        $Val extends AssignDocumentResponse>
    implements $AssignDocumentResponseCopyWith<$Res> {
  _$AssignDocumentResponseCopyWithImpl(this._value, this._then);

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
    Object? DonVi = freezed,
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
      DonVi: freezed == DonVi
          ? _value.DonVi
          : DonVi // ignore: cast_nullable_to_non_nullable
              as String?,
      TrangThai: freezed == TrangThai
          ? _value.TrangThai
          : TrangThai // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignDocumentResponseImplCopyWith<$Res>
    implements $AssignDocumentResponseCopyWith<$Res> {
  factory _$$AssignDocumentResponseImplCopyWith(
          _$AssignDocumentResponseImpl value,
          $Res Function(_$AssignDocumentResponseImpl) then) =
      __$$AssignDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? TrichYeu,
      String? NgayBanHanh,
      String? DonVi,
      String? TrangThai});
}

/// @nodoc
class __$$AssignDocumentResponseImplCopyWithImpl<$Res>
    extends _$AssignDocumentResponseCopyWithImpl<$Res,
        _$AssignDocumentResponseImpl>
    implements _$$AssignDocumentResponseImplCopyWith<$Res> {
  __$$AssignDocumentResponseImplCopyWithImpl(
      _$AssignDocumentResponseImpl _value,
      $Res Function(_$AssignDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? TrichYeu = freezed,
    Object? NgayBanHanh = freezed,
    Object? DonVi = freezed,
    Object? TrangThai = freezed,
  }) {
    return _then(_$AssignDocumentResponseImpl(
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
      DonVi: freezed == DonVi
          ? _value.DonVi
          : DonVi // ignore: cast_nullable_to_non_nullable
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
class _$AssignDocumentResponseImpl implements _AssignDocumentResponse {
  const _$AssignDocumentResponseImpl(
      {this.id, this.TrichYeu, this.NgayBanHanh, this.DonVi, this.TrangThai});

  factory _$AssignDocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignDocumentResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? TrichYeu;
  @override
  final String? NgayBanHanh;
  @override
  final String? DonVi;
  @override
  final String? TrangThai;

  @override
  String toString() {
    return 'AssignDocumentResponse(id: $id, TrichYeu: $TrichYeu, NgayBanHanh: $NgayBanHanh, DonVi: $DonVi, TrangThai: $TrangThai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignDocumentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.TrichYeu, TrichYeu) ||
                other.TrichYeu == TrichYeu) &&
            (identical(other.NgayBanHanh, NgayBanHanh) ||
                other.NgayBanHanh == NgayBanHanh) &&
            (identical(other.DonVi, DonVi) || other.DonVi == DonVi) &&
            (identical(other.TrangThai, TrangThai) ||
                other.TrangThai == TrangThai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, TrichYeu, NgayBanHanh, DonVi, TrangThai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignDocumentResponseImplCopyWith<_$AssignDocumentResponseImpl>
      get copyWith => __$$AssignDocumentResponseImplCopyWithImpl<
          _$AssignDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _AssignDocumentResponse implements AssignDocumentResponse {
  const factory _AssignDocumentResponse(
      {final int? id,
      final String? TrichYeu,
      final String? NgayBanHanh,
      final String? DonVi,
      final String? TrangThai}) = _$AssignDocumentResponseImpl;

  factory _AssignDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$AssignDocumentResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get TrichYeu;
  @override
  String? get NgayBanHanh;
  @override
  String? get DonVi;
  @override
  String? get TrangThai;
  @override
  @JsonKey(ignore: true)
  _$$AssignDocumentResponseImplCopyWith<_$AssignDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
