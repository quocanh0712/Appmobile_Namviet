// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationRequest _$ConversationRequestFromJson(Map<String, dynamic> json) {
  return _ConversationRequest.fromJson(json);
}

/// @nodoc
mixin _$ConversationRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationRequestCopyWith<ConversationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationRequestCopyWith<$Res> {
  factory $ConversationRequestCopyWith(
          ConversationRequest value, $Res Function(ConversationRequest) then) =
      _$ConversationRequestCopyWithImpl<$Res, ConversationRequest>;
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class _$ConversationRequestCopyWithImpl<$Res, $Val extends ConversationRequest>
    implements $ConversationRequestCopyWith<$Res> {
  _$ConversationRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$ConversationRequestImplCopyWith<$Res>
    implements $ConversationRequestCopyWith<$Res> {
  factory _$$ConversationRequestImplCopyWith(_$ConversationRequestImpl value,
          $Res Function(_$ConversationRequestImpl) then) =
      __$$ConversationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$ConversationRequestImplCopyWithImpl<$Res>
    extends _$ConversationRequestCopyWithImpl<$Res, _$ConversationRequestImpl>
    implements _$$ConversationRequestImplCopyWith<$Res> {
  __$$ConversationRequestImplCopyWithImpl(_$ConversationRequestImpl _value,
      $Res Function(_$ConversationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$ConversationRequestImpl(
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
class _$ConversationRequestImpl implements _ConversationRequest {
  const _$ConversationRequestImpl({this.startindex, this.length, this.keyword});

  factory _$ConversationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;

  @override
  String toString() {
    return 'ConversationRequest(startindex: $startindex, length: $length, keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationRequestImpl &&
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
  _$$ConversationRequestImplCopyWith<_$ConversationRequestImpl> get copyWith =>
      __$$ConversationRequestImplCopyWithImpl<_$ConversationRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationRequestImplToJson(
      this,
    );
  }
}

abstract class _ConversationRequest implements ConversationRequest {
  const factory _ConversationRequest(
      {final int? startindex,
      final int? length,
      final String? keyword}) = _$ConversationRequestImpl;

  factory _ConversationRequest.fromJson(Map<String, dynamic> json) =
      _$ConversationRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$ConversationRequestImplCopyWith<_$ConversationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
