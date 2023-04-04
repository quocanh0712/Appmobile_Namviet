// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ConversationRequestCopyWith<$Res>
    implements $ConversationRequestCopyWith<$Res> {
  factory _$$_ConversationRequestCopyWith(_$_ConversationRequest value,
          $Res Function(_$_ConversationRequest) then) =
      __$$_ConversationRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$_ConversationRequestCopyWithImpl<$Res>
    extends _$ConversationRequestCopyWithImpl<$Res, _$_ConversationRequest>
    implements _$$_ConversationRequestCopyWith<$Res> {
  __$$_ConversationRequestCopyWithImpl(_$_ConversationRequest _value,
      $Res Function(_$_ConversationRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$_ConversationRequest(
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
class _$_ConversationRequest implements _ConversationRequest {
  const _$_ConversationRequest({this.startindex, this.length, this.keyword});

  factory _$_ConversationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationRequestFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationRequest &&
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
  _$$_ConversationRequestCopyWith<_$_ConversationRequest> get copyWith =>
      __$$_ConversationRequestCopyWithImpl<_$_ConversationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationRequestToJson(
      this,
    );
  }
}

abstract class _ConversationRequest implements ConversationRequest {
  const factory _ConversationRequest(
      {final int? startindex,
      final int? length,
      final String? keyword}) = _$_ConversationRequest;

  factory _ConversationRequest.fromJson(Map<String, dynamic> json) =
      _$_ConversationRequest.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationRequestCopyWith<_$_ConversationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
