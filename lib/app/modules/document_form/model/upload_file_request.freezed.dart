// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$UploadFileRequestImplCopyWith<$Res>
    implements $UploadFileRequestCopyWith<$Res> {
  factory _$$UploadFileRequestImplCopyWith(_$UploadFileRequestImpl value,
          $Res Function(_$UploadFileRequestImpl) then) =
      __$$UploadFileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? strBase64});
}

/// @nodoc
class __$$UploadFileRequestImplCopyWithImpl<$Res>
    extends _$UploadFileRequestCopyWithImpl<$Res, _$UploadFileRequestImpl>
    implements _$$UploadFileRequestImplCopyWith<$Res> {
  __$$UploadFileRequestImplCopyWithImpl(_$UploadFileRequestImpl _value,
      $Res Function(_$UploadFileRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? strBase64 = freezed,
  }) {
    return _then(_$UploadFileRequestImpl(
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
class _$UploadFileRequestImpl implements _UploadFileRequest {
  const _$UploadFileRequestImpl({this.name, this.strBase64});

  factory _$UploadFileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? strBase64;

  @override
  String toString() {
    return 'UploadFileRequest(name: $name, strBase64: $strBase64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileRequestImpl &&
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
  _$$UploadFileRequestImplCopyWith<_$UploadFileRequestImpl> get copyWith =>
      __$$UploadFileRequestImplCopyWithImpl<_$UploadFileRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadFileRequest implements UploadFileRequest {
  const factory _UploadFileRequest(
      {final String? name, final String? strBase64}) = _$UploadFileRequestImpl;

  factory _UploadFileRequest.fromJson(Map<String, dynamic> json) =
      _$UploadFileRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get strBase64;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileRequestImplCopyWith<_$UploadFileRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
