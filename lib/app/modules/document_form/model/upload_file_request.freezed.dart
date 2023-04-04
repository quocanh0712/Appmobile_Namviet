// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_file_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadFileRequest _$UploadFileRequestFromJson(Map<String, dynamic> json) {
  return _UploadFileRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadFileRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get strBase64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileRequestCopyWith<UploadFileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileRequestCopyWith<$Res> {
  factory $UploadFileRequestCopyWith(
          UploadFileRequest value, $Res Function(UploadFileRequest) then) =
      _$UploadFileRequestCopyWithImpl<$Res, UploadFileRequest>;
  @useResult
  $Res call({String? name, String? strBase64});
}

/// @nodoc
class _$UploadFileRequestCopyWithImpl<$Res, $Val extends UploadFileRequest>
    implements $UploadFileRequestCopyWith<$Res> {
  _$UploadFileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? strBase64 = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      strBase64: freezed == strBase64
          ? _value.strBase64
          : strBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadFileRequestCopyWith<$Res>
    implements $UploadFileRequestCopyWith<$Res> {
  factory _$$_UploadFileRequestCopyWith(_$_UploadFileRequest value,
          $Res Function(_$_UploadFileRequest) then) =
      __$$_UploadFileRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? strBase64});
}

/// @nodoc
class __$$_UploadFileRequestCopyWithImpl<$Res>
    extends _$UploadFileRequestCopyWithImpl<$Res, _$_UploadFileRequest>
    implements _$$_UploadFileRequestCopyWith<$Res> {
  __$$_UploadFileRequestCopyWithImpl(
      _$_UploadFileRequest _value, $Res Function(_$_UploadFileRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? strBase64 = freezed,
  }) {
    return _then(_$_UploadFileRequest(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      strBase64: freezed == strBase64
          ? _value.strBase64
          : strBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadFileRequest implements _UploadFileRequest {
  const _$_UploadFileRequest({this.name, this.strBase64});

  factory _$_UploadFileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UploadFileRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? strBase64;

  @override
  String toString() {
    return 'UploadFileRequest(name: $name, strBase64: $strBase64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.strBase64, strBase64) ||
                other.strBase64 == strBase64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, strBase64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadFileRequestCopyWith<_$_UploadFileRequest> get copyWith =>
      __$$_UploadFileRequestCopyWithImpl<_$_UploadFileRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadFileRequestToJson(
      this,
    );
  }
}

abstract class _UploadFileRequest implements UploadFileRequest {
  const factory _UploadFileRequest(
      {final String? name, final String? strBase64}) = _$_UploadFileRequest;

  factory _UploadFileRequest.fromJson(Map<String, dynamic> json) =
      _$_UploadFileRequest.fromJson;

  @override
  String? get name;
  @override
  String? get strBase64;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFileRequestCopyWith<_$_UploadFileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
