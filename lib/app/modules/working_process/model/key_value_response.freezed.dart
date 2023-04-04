// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'key_value_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_KeyValueResponseCopyWith<$Res>
    implements $KeyValueResponseCopyWith<$Res> {
  factory _$$_KeyValueResponseCopyWith(
          _$_KeyValueResponse value, $Res Function(_$_KeyValueResponse) then) =
      __$$_KeyValueResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? key, String? value});
}

/// @nodoc
class __$$_KeyValueResponseCopyWithImpl<$Res>
    extends _$KeyValueResponseCopyWithImpl<$Res, _$_KeyValueResponse>
    implements _$$_KeyValueResponseCopyWith<$Res> {
  __$$_KeyValueResponseCopyWithImpl(
      _$_KeyValueResponse _value, $Res Function(_$_KeyValueResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_KeyValueResponse(
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
class _$_KeyValueResponse implements _KeyValueResponse {
  const _$_KeyValueResponse({this.key, this.value});

  factory _$_KeyValueResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KeyValueResponseFromJson(json);

  @override
  final int? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'KeyValueResponse(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyValueResponse &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyValueResponseCopyWith<_$_KeyValueResponse> get copyWith =>
      __$$_KeyValueResponseCopyWithImpl<_$_KeyValueResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyValueResponseToJson(
      this,
    );
  }
}

abstract class _KeyValueResponse implements KeyValueResponse {
  const factory _KeyValueResponse({final int? key, final String? value}) =
      _$_KeyValueResponse;

  factory _KeyValueResponse.fromJson(Map<String, dynamic> json) =
      _$_KeyValueResponse.fromJson;

  @override
  int? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_KeyValueResponseCopyWith<_$_KeyValueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
