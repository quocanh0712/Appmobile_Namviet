// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_insert_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentInsertRequest _$CommentInsertRequestFromJson(Map<String, dynamic> json) {
  return _CommentInsertRequest.fromJson(json);
}

/// @nodoc
mixin _$CommentInsertRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentInsertRequestCopyWith<CommentInsertRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentInsertRequestCopyWith<$Res> {
  factory $CommentInsertRequestCopyWith(CommentInsertRequest value,
          $Res Function(CommentInsertRequest) then) =
      _$CommentInsertRequestCopyWithImpl<$Res, CommentInsertRequest>;
  @useResult
  $Res call({int? id, String? content});
}

/// @nodoc
class _$CommentInsertRequestCopyWithImpl<$Res,
        $Val extends CommentInsertRequest>
    implements $CommentInsertRequestCopyWith<$Res> {
  _$CommentInsertRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentInsertRequestImplCopyWith<$Res>
    implements $CommentInsertRequestCopyWith<$Res> {
  factory _$$CommentInsertRequestImplCopyWith(_$CommentInsertRequestImpl value,
          $Res Function(_$CommentInsertRequestImpl) then) =
      __$$CommentInsertRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? content});
}

/// @nodoc
class __$$CommentInsertRequestImplCopyWithImpl<$Res>
    extends _$CommentInsertRequestCopyWithImpl<$Res, _$CommentInsertRequestImpl>
    implements _$$CommentInsertRequestImplCopyWith<$Res> {
  __$$CommentInsertRequestImplCopyWithImpl(_$CommentInsertRequestImpl _value,
      $Res Function(_$CommentInsertRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
  }) {
    return _then(_$CommentInsertRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentInsertRequestImpl implements _CommentInsertRequest {
  const _$CommentInsertRequestImpl({this.id, this.content});

  factory _$CommentInsertRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentInsertRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String? content;

  @override
  String toString() {
    return 'CommentInsertRequest(id: $id, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentInsertRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentInsertRequestImplCopyWith<_$CommentInsertRequestImpl>
      get copyWith =>
          __$$CommentInsertRequestImplCopyWithImpl<_$CommentInsertRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentInsertRequestImplToJson(
      this,
    );
  }
}

abstract class _CommentInsertRequest implements CommentInsertRequest {
  const factory _CommentInsertRequest({final int? id, final String? content}) =
      _$CommentInsertRequestImpl;

  factory _CommentInsertRequest.fromJson(Map<String, dynamic> json) =
      _$CommentInsertRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$CommentInsertRequestImplCopyWith<_$CommentInsertRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
