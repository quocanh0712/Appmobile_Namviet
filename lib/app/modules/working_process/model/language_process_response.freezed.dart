// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_process_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageProcessResponse _$LanguageProcessResponseFromJson(
    Map<String, dynamic> json) {
  return _LanguageProcessResponse.fromJson(json);
}

/// @nodoc
mixin _$LanguageProcessResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get foreignlanguage => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageProcessResponseCopyWith<LanguageProcessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageProcessResponseCopyWith<$Res> {
  factory $LanguageProcessResponseCopyWith(LanguageProcessResponse value,
          $Res Function(LanguageProcessResponse) then) =
      _$LanguageProcessResponseCopyWithImpl<$Res, LanguageProcessResponse>;
  @useResult
  $Res call({int? id, String? foreignlanguage, String? level});
}

/// @nodoc
class _$LanguageProcessResponseCopyWithImpl<$Res,
        $Val extends LanguageProcessResponse>
    implements $LanguageProcessResponseCopyWith<$Res> {
  _$LanguageProcessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foreignlanguage = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foreignlanguage: freezed == foreignlanguage
          ? _value.foreignlanguage
          : foreignlanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageProcessResponseCopyWith<$Res>
    implements $LanguageProcessResponseCopyWith<$Res> {
  factory _$$_LanguageProcessResponseCopyWith(_$_LanguageProcessResponse value,
          $Res Function(_$_LanguageProcessResponse) then) =
      __$$_LanguageProcessResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? foreignlanguage, String? level});
}

/// @nodoc
class __$$_LanguageProcessResponseCopyWithImpl<$Res>
    extends _$LanguageProcessResponseCopyWithImpl<$Res,
        _$_LanguageProcessResponse>
    implements _$$_LanguageProcessResponseCopyWith<$Res> {
  __$$_LanguageProcessResponseCopyWithImpl(_$_LanguageProcessResponse _value,
      $Res Function(_$_LanguageProcessResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foreignlanguage = freezed,
    Object? level = freezed,
  }) {
    return _then(_$_LanguageProcessResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foreignlanguage: freezed == foreignlanguage
          ? _value.foreignlanguage
          : foreignlanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageProcessResponse implements _LanguageProcessResponse {
  const _$_LanguageProcessResponse({this.id, this.foreignlanguage, this.level});

  factory _$_LanguageProcessResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageProcessResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? foreignlanguage;
  @override
  final String? level;

  @override
  String toString() {
    return 'LanguageProcessResponse(id: $id, foreignlanguage: $foreignlanguage, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageProcessResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foreignlanguage, foreignlanguage) ||
                other.foreignlanguage == foreignlanguage) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, foreignlanguage, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageProcessResponseCopyWith<_$_LanguageProcessResponse>
      get copyWith =>
          __$$_LanguageProcessResponseCopyWithImpl<_$_LanguageProcessResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageProcessResponseToJson(
      this,
    );
  }
}

abstract class _LanguageProcessResponse implements LanguageProcessResponse {
  const factory _LanguageProcessResponse(
      {final int? id,
      final String? foreignlanguage,
      final String? level}) = _$_LanguageProcessResponse;

  factory _LanguageProcessResponse.fromJson(Map<String, dynamic> json) =
      _$_LanguageProcessResponse.fromJson;

  @override
  int? get id;
  @override
  String? get foreignlanguage;
  @override
  String? get level;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageProcessResponseCopyWith<_$_LanguageProcessResponse>
      get copyWith => throw _privateConstructorUsedError;
}
