// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentRequest _$CommentRequestFromJson(Map<String, dynamic> json) {
  return _CommentRequest.fromJson(json);
}

/// @nodoc
mixin _$CommentRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentRequestCopyWith<CommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentRequestCopyWith<$Res> {
  factory $CommentRequestCopyWith(
          CommentRequest value, $Res Function(CommentRequest) then) =
      _$CommentRequestCopyWithImpl<$Res, CommentRequest>;
  @useResult
  $Res call({int? startindex, int? length, String? keyword, int? id});
}

/// @nodoc
class _$CommentRequestCopyWithImpl<$Res, $Val extends CommentRequest>
    implements $CommentRequestCopyWith<$Res> {
  _$CommentRequestCopyWithImpl(this._value, this._then);

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
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentRequestCopyWith<$Res>
    implements $CommentRequestCopyWith<$Res> {
  factory _$$_CommentRequestCopyWith(
          _$_CommentRequest value, $Res Function(_$_CommentRequest) then) =
      __$$_CommentRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword, int? id});
}

/// @nodoc
class __$$_CommentRequestCopyWithImpl<$Res>
    extends _$CommentRequestCopyWithImpl<$Res, _$_CommentRequest>
    implements _$$_CommentRequestCopyWith<$Res> {
  __$$_CommentRequestCopyWithImpl(
      _$_CommentRequest _value, $Res Function(_$_CommentRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_CommentRequest(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentRequest implements _CommentRequest {
  const _$_CommentRequest(
      {this.startindex, this.length, this.keyword, this.id});

  factory _$_CommentRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CommentRequestFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;
  @override
  final int? id;

  @override
  String toString() {
    return 'CommentRequest(startindex: $startindex, length: $length, keyword: $keyword, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentRequest &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startindex, length, keyword, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentRequestCopyWith<_$_CommentRequest> get copyWith =>
      __$$_CommentRequestCopyWithImpl<_$_CommentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentRequestToJson(
      this,
    );
  }
}

abstract class _CommentRequest implements CommentRequest {
  const factory _CommentRequest(
      {final int? startindex,
      final int? length,
      final String? keyword,
      final int? id}) = _$_CommentRequest;

  factory _CommentRequest.fromJson(Map<String, dynamic> json) =
      _$_CommentRequest.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_CommentRequestCopyWith<_$_CommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
