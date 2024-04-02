// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CertificateRequest _$CertificateRequestFromJson(Map<String, dynamic> json) {
  return _CertificateRequest.fromJson(json);
}

/// @nodoc
mixin _$CertificateRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateRequestCopyWith<CertificateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateRequestCopyWith<$Res> {
  factory $CertificateRequestCopyWith(
          CertificateRequest value, $Res Function(CertificateRequest) then) =
      _$CertificateRequestCopyWithImpl<$Res, CertificateRequest>;
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class _$CertificateRequestCopyWithImpl<$Res, $Val extends CertificateRequest>
    implements $CertificateRequestCopyWith<$Res> {
  _$CertificateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CertificateRequestImplCopyWith<$Res>
    implements $CertificateRequestCopyWith<$Res> {
  factory _$$CertificateRequestImplCopyWith(_$CertificateRequestImpl value,
          $Res Function(_$CertificateRequestImpl) then) =
      __$$CertificateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$CertificateRequestImplCopyWithImpl<$Res>
    extends _$CertificateRequestCopyWithImpl<$Res, _$CertificateRequestImpl>
    implements _$$CertificateRequestImplCopyWith<$Res> {
  __$$CertificateRequestImplCopyWithImpl(_$CertificateRequestImpl _value,
      $Res Function(_$CertificateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$CertificateRequestImpl(
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CertificateRequestImpl implements _CertificateRequest {
  const _$CertificateRequestImpl({this.startindex, this.length});

  factory _$CertificateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CertificateRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'CertificateRequest(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateRequestImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateRequestImplCopyWith<_$CertificateRequestImpl> get copyWith =>
      __$$CertificateRequestImplCopyWithImpl<_$CertificateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CertificateRequestImplToJson(
      this,
    );
  }
}

abstract class _CertificateRequest implements CertificateRequest {
  const factory _CertificateRequest(
      {final int? startindex, final int? length}) = _$CertificateRequestImpl;

  factory _CertificateRequest.fromJson(Map<String, dynamic> json) =
      _$CertificateRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$CertificateRequestImplCopyWith<_$CertificateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
