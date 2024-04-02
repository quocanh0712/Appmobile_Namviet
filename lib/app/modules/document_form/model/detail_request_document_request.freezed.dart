// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_request_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailRequestDocumentRequest _$DetailRequestDocumentRequestFromJson(
    Map<String, dynamic> json) {
  return _DetailRequestDocumentRequest.fromJson(json);
}

/// @nodoc
mixin _$DetailRequestDocumentRequest {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailRequestDocumentRequestCopyWith<DetailRequestDocumentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRequestDocumentRequestCopyWith<$Res> {
  factory $DetailRequestDocumentRequestCopyWith(
          DetailRequestDocumentRequest value,
          $Res Function(DetailRequestDocumentRequest) then) =
      _$DetailRequestDocumentRequestCopyWithImpl<$Res,
          DetailRequestDocumentRequest>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$DetailRequestDocumentRequestCopyWithImpl<$Res,
        $Val extends DetailRequestDocumentRequest>
    implements $DetailRequestDocumentRequestCopyWith<$Res> {
  _$DetailRequestDocumentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailRequestDocumentRequestImplCopyWith<$Res>
    implements $DetailRequestDocumentRequestCopyWith<$Res> {
  factory _$$DetailRequestDocumentRequestImplCopyWith(
          _$DetailRequestDocumentRequestImpl value,
          $Res Function(_$DetailRequestDocumentRequestImpl) then) =
      __$$DetailRequestDocumentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$DetailRequestDocumentRequestImplCopyWithImpl<$Res>
    extends _$DetailRequestDocumentRequestCopyWithImpl<$Res,
        _$DetailRequestDocumentRequestImpl>
    implements _$$DetailRequestDocumentRequestImplCopyWith<$Res> {
  __$$DetailRequestDocumentRequestImplCopyWithImpl(
      _$DetailRequestDocumentRequestImpl _value,
      $Res Function(_$DetailRequestDocumentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DetailRequestDocumentRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailRequestDocumentRequestImpl
    implements _DetailRequestDocumentRequest {
  const _$DetailRequestDocumentRequestImpl({this.id});

  factory _$DetailRequestDocumentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailRequestDocumentRequestImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'DetailRequestDocumentRequest(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailRequestDocumentRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailRequestDocumentRequestImplCopyWith<
          _$DetailRequestDocumentRequestImpl>
      get copyWith => __$$DetailRequestDocumentRequestImplCopyWithImpl<
          _$DetailRequestDocumentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailRequestDocumentRequestImplToJson(
      this,
    );
  }
}

abstract class _DetailRequestDocumentRequest
    implements DetailRequestDocumentRequest {
  const factory _DetailRequestDocumentRequest({final int? id}) =
      _$DetailRequestDocumentRequestImpl;

  factory _DetailRequestDocumentRequest.fromJson(Map<String, dynamic> json) =
      _$DetailRequestDocumentRequestImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$DetailRequestDocumentRequestImplCopyWith<
          _$DetailRequestDocumentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
