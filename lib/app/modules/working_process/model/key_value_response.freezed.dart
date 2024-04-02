// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_value_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyValueResponse _$KeyValueResponseFromJson(Map<String, dynamic> json) {
  return _KeyValueResponse.fromJson(json);
}

/// @nodoc
mixin _$KeyValueResponse {
  int? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValueResponseCopyWith<KeyValueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueResponseCopyWith<$Res> {
  factory $KeyValueResponseCopyWith(
          KeyValueResponse value, $Res Function(KeyValueResponse) then) =
      _$KeyValueResponseCopyWithImpl<$Res, KeyValueResponse>;
  @useResult
  $Res call({int? key, String? value});
}

/// @nodoc
class _$KeyValueResponseCopyWithImpl<$Res, $Val extends KeyValueResponse>
    implements $KeyValueResponseCopyWith<$Res> {
  _$KeyValueResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyValueResponseImplCopyWith<$Res>
    implements $KeyValueResponseCopyWith<$Res> {
  factory _$$KeyValueResponseImplCopyWith(_$KeyValueResponseImpl value,
          $Res Function(_$KeyValueResponseImpl) then) =
      __$$KeyValueResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? key, String? value});
}

/// @nodoc
class __$$KeyValueResponseImplCopyWithImpl<$Res>
    extends _$KeyValueResponseCopyWithImpl<$Res, _$KeyValueResponseImpl>
    implements _$$KeyValueResponseImplCopyWith<$Res> {
  __$$KeyValueResponseImplCopyWithImpl(_$KeyValueResponseImpl _value,
      $Res Function(_$KeyValueResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$KeyValueResponseImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyValueResponseImpl implements _KeyValueResponse {
  const _$KeyValueResponseImpl({this.key, this.value});

  factory _$KeyValueResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyValueResponseImplFromJson(json);

  @override
  final int? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'KeyValueResponse(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueResponseImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueResponseImplCopyWith<_$KeyValueResponseImpl> get copyWith =>
      __$$KeyValueResponseImplCopyWithImpl<_$KeyValueResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyValueResponseImplToJson(
      this,
    );
  }
}

abstract class _KeyValueResponse implements KeyValueResponse {
  const factory _KeyValueResponse({final int? key, final String? value}) =
      _$KeyValueResponseImpl;

  factory _KeyValueResponse.fromJson(Map<String, dynamic> json) =
      _$KeyValueResponseImpl.fromJson;

  @override
  int? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$KeyValueResponseImplCopyWith<_$KeyValueResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
