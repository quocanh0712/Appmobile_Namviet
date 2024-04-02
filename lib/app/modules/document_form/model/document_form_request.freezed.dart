// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_form_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentFormRequest _$DocumentFormRequestFromJson(Map<String, dynamic> json) {
  return _DocumentFormRequest.fromJson(json);
}

/// @nodoc
mixin _$DocumentFormRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentFormRequestCopyWith<DocumentFormRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentFormRequestCopyWith<$Res> {
  factory $DocumentFormRequestCopyWith(
          DocumentFormRequest value, $Res Function(DocumentFormRequest) then) =
      _$DocumentFormRequestCopyWithImpl<$Res, DocumentFormRequest>;
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class _$DocumentFormRequestCopyWithImpl<$Res, $Val extends DocumentFormRequest>
    implements $DocumentFormRequestCopyWith<$Res> {
  _$DocumentFormRequestCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentFormRequestImplCopyWith<$Res>
    implements $DocumentFormRequestCopyWith<$Res> {
  factory _$$DocumentFormRequestImplCopyWith(_$DocumentFormRequestImpl value,
          $Res Function(_$DocumentFormRequestImpl) then) =
      __$$DocumentFormRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$DocumentFormRequestImplCopyWithImpl<$Res>
    extends _$DocumentFormRequestCopyWithImpl<$Res, _$DocumentFormRequestImpl>
    implements _$$DocumentFormRequestImplCopyWith<$Res> {
  __$$DocumentFormRequestImplCopyWithImpl(_$DocumentFormRequestImpl _value,
      $Res Function(_$DocumentFormRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$DocumentFormRequestImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentFormRequestImpl implements _DocumentFormRequest {
  const _$DocumentFormRequestImpl({this.startindex, this.length, this.keyword});

  factory _$DocumentFormRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentFormRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;

  @override
  String toString() {
    return 'DocumentFormRequest(startindex: $startindex, length: $length, keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentFormRequestImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startindex, length, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentFormRequestImplCopyWith<_$DocumentFormRequestImpl> get copyWith =>
      __$$DocumentFormRequestImplCopyWithImpl<_$DocumentFormRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentFormRequestImplToJson(
      this,
    );
  }
}

abstract class _DocumentFormRequest implements DocumentFormRequest {
  const factory _DocumentFormRequest(
      {final int? startindex,
      final int? length,
      final String? keyword}) = _$DocumentFormRequestImpl;

  factory _DocumentFormRequest.fromJson(Map<String, dynamic> json) =
      _$DocumentFormRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$DocumentFormRequestImplCopyWith<_$DocumentFormRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
