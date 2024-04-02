// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_request_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyRequestDocumentRequest _$MyRequestDocumentRequestFromJson(
    Map<String, dynamic> json) {
  return _MyRequestDocumentRequest.fromJson(json);
}

/// @nodoc
mixin _$MyRequestDocumentRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyRequestDocumentRequestCopyWith<MyRequestDocumentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRequestDocumentRequestCopyWith<$Res> {
  factory $MyRequestDocumentRequestCopyWith(MyRequestDocumentRequest value,
          $Res Function(MyRequestDocumentRequest) then) =
      _$MyRequestDocumentRequestCopyWithImpl<$Res, MyRequestDocumentRequest>;
  @useResult
  $Res call({int? startindex, int? length, String? keyword, int? status});
}

/// @nodoc
class _$MyRequestDocumentRequestCopyWithImpl<$Res,
        $Val extends MyRequestDocumentRequest>
    implements $MyRequestDocumentRequestCopyWith<$Res> {
  _$MyRequestDocumentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
    Object? status = freezed,
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
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyRequestDocumentRequestImplCopyWith<$Res>
    implements $MyRequestDocumentRequestCopyWith<$Res> {
  factory _$$MyRequestDocumentRequestImplCopyWith(
          _$MyRequestDocumentRequestImpl value,
          $Res Function(_$MyRequestDocumentRequestImpl) then) =
      __$$MyRequestDocumentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword, int? status});
}

/// @nodoc
class __$$MyRequestDocumentRequestImplCopyWithImpl<$Res>
    extends _$MyRequestDocumentRequestCopyWithImpl<$Res,
        _$MyRequestDocumentRequestImpl>
    implements _$$MyRequestDocumentRequestImplCopyWith<$Res> {
  __$$MyRequestDocumentRequestImplCopyWithImpl(
      _$MyRequestDocumentRequestImpl _value,
      $Res Function(_$MyRequestDocumentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MyRequestDocumentRequestImpl(
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyRequestDocumentRequestImpl implements _MyRequestDocumentRequest {
  const _$MyRequestDocumentRequestImpl(
      {this.startindex, this.length, this.keyword, this.status});

  factory _$MyRequestDocumentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyRequestDocumentRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;
  @override
  final int? status;

  @override
  String toString() {
    return 'MyRequestDocumentRequest(startindex: $startindex, length: $length, keyword: $keyword, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRequestDocumentRequestImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startindex, length, keyword, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyRequestDocumentRequestImplCopyWith<_$MyRequestDocumentRequestImpl>
      get copyWith => __$$MyRequestDocumentRequestImplCopyWithImpl<
          _$MyRequestDocumentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyRequestDocumentRequestImplToJson(
      this,
    );
  }
}

abstract class _MyRequestDocumentRequest implements MyRequestDocumentRequest {
  const factory _MyRequestDocumentRequest(
      {final int? startindex,
      final int? length,
      final String? keyword,
      final int? status}) = _$MyRequestDocumentRequestImpl;

  factory _MyRequestDocumentRequest.fromJson(Map<String, dynamic> json) =
      _$MyRequestDocumentRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$MyRequestDocumentRequestImplCopyWith<_$MyRequestDocumentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
