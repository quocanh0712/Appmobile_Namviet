// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllEmailRequest _$AllEmailRequestFromJson(Map<String, dynamic> json) {
  return _AllEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$AllEmailRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  int? get loai => throw _privateConstructorUsedError;
  int? get phanLoai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllEmailRequestCopyWith<AllEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllEmailRequestCopyWith<$Res> {
  factory $AllEmailRequestCopyWith(
          AllEmailRequest value, $Res Function(AllEmailRequest) then) =
      _$AllEmailRequestCopyWithImpl<$Res, AllEmailRequest>;
  @useResult
  $Res call(
      {String? iduser, int? startindex, int? length, int? loai, int? phanLoai});
}

/// @nodoc
class _$AllEmailRequestCopyWithImpl<$Res, $Val extends AllEmailRequest>
    implements $AllEmailRequestCopyWith<$Res> {
  _$AllEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? loai = freezed,
    Object? phanLoai = freezed,
  }) {
    return _then(_value.copyWith(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      loai: freezed == loai
          ? _value.loai
          : loai // ignore: cast_nullable_to_non_nullable
              as int?,
      phanLoai: freezed == phanLoai
          ? _value.phanLoai
          : phanLoai // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllEmailRequestImplCopyWith<$Res>
    implements $AllEmailRequestCopyWith<$Res> {
  factory _$$AllEmailRequestImplCopyWith(_$AllEmailRequestImpl value,
          $Res Function(_$AllEmailRequestImpl) then) =
      __$$AllEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iduser, int? startindex, int? length, int? loai, int? phanLoai});
}

/// @nodoc
class __$$AllEmailRequestImplCopyWithImpl<$Res>
    extends _$AllEmailRequestCopyWithImpl<$Res, _$AllEmailRequestImpl>
    implements _$$AllEmailRequestImplCopyWith<$Res> {
  __$$AllEmailRequestImplCopyWithImpl(
      _$AllEmailRequestImpl _value, $Res Function(_$AllEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? loai = freezed,
    Object? phanLoai = freezed,
  }) {
    return _then(_$AllEmailRequestImpl(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      loai: freezed == loai
          ? _value.loai
          : loai // ignore: cast_nullable_to_non_nullable
              as int?,
      phanLoai: freezed == phanLoai
          ? _value.phanLoai
          : phanLoai // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllEmailRequestImpl implements _AllEmailRequest {
  _$AllEmailRequestImpl(
      {this.iduser, this.startindex, this.length, this.loai, this.phanLoai});

  factory _$AllEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllEmailRequestImplFromJson(json);

  @override
  final String? iduser;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final int? loai;
  @override
  final int? phanLoai;

  @override
  String toString() {
    return 'AllEmailRequest(iduser: $iduser, startindex: $startindex, length: $length, loai: $loai, phanLoai: $phanLoai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllEmailRequestImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.loai, loai) || other.loai == loai) &&
            (identical(other.phanLoai, phanLoai) ||
                other.phanLoai == phanLoai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iduser, startindex, length, loai, phanLoai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllEmailRequestImplCopyWith<_$AllEmailRequestImpl> get copyWith =>
      __$$AllEmailRequestImplCopyWithImpl<_$AllEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _AllEmailRequest implements AllEmailRequest {
  factory _AllEmailRequest(
      {final String? iduser,
      final int? startindex,
      final int? length,
      final int? loai,
      final int? phanLoai}) = _$AllEmailRequestImpl;

  factory _AllEmailRequest.fromJson(Map<String, dynamic> json) =
      _$AllEmailRequestImpl.fromJson;

  @override
  String? get iduser;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  int? get loai;
  @override
  int? get phanLoai;
  @override
  @JsonKey(ignore: true)
  _$$AllEmailRequestImplCopyWith<_$AllEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
