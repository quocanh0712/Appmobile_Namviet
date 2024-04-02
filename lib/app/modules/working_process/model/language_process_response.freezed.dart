// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_process_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$LanguageProcessResponseImplCopyWith<$Res>
    implements $LanguageProcessResponseCopyWith<$Res> {
  factory _$$LanguageProcessResponseImplCopyWith(
          _$LanguageProcessResponseImpl value,
          $Res Function(_$LanguageProcessResponseImpl) then) =
      __$$LanguageProcessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? foreignlanguage, String? level});
}

/// @nodoc
class __$$LanguageProcessResponseImplCopyWithImpl<$Res>
    extends _$LanguageProcessResponseCopyWithImpl<$Res,
        _$LanguageProcessResponseImpl>
    implements _$$LanguageProcessResponseImplCopyWith<$Res> {
  __$$LanguageProcessResponseImplCopyWithImpl(
      _$LanguageProcessResponseImpl _value,
      $Res Function(_$LanguageProcessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foreignlanguage = freezed,
    Object? level = freezed,
  }) {
    return _then(_$LanguageProcessResponseImpl(
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
class _$LanguageProcessResponseImpl implements _LanguageProcessResponse {
  const _$LanguageProcessResponseImpl(
      {this.id, this.foreignlanguage, this.level});

  factory _$LanguageProcessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageProcessResponseImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageProcessResponseImpl &&
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
  _$$LanguageProcessResponseImplCopyWith<_$LanguageProcessResponseImpl>
      get copyWith => __$$LanguageProcessResponseImplCopyWithImpl<
          _$LanguageProcessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageProcessResponseImplToJson(
      this,
    );
  }
}

abstract class _LanguageProcessResponse implements LanguageProcessResponse {
  const factory _LanguageProcessResponse(
      {final int? id,
      final String? foreignlanguage,
      final String? level}) = _$LanguageProcessResponseImpl;

  factory _LanguageProcessResponse.fromJson(Map<String, dynamic> json) =
      _$LanguageProcessResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get foreignlanguage;
  @override
  String? get level;
  @override
  @JsonKey(ignore: true)
  _$$LanguageProcessResponseImplCopyWith<_$LanguageProcessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
