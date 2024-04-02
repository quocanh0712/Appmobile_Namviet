// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scientific_research_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScientificResearchResponse _$ScientificResearchResponseFromJson(
    Map<String, dynamic> json) {
  return _ScientificResearchResponse.fromJson(json);
}

/// @nodoc
mixin _$ScientificResearchResponse {
  int? get typeId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScientificResearchResponseCopyWith<ScientificResearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScientificResearchResponseCopyWith<$Res> {
  factory $ScientificResearchResponseCopyWith(ScientificResearchResponse value,
          $Res Function(ScientificResearchResponse) then) =
      _$ScientificResearchResponseCopyWithImpl<$Res,
          ScientificResearchResponse>;
  @useResult
  $Res call({int? typeId, String? type, String? description});
}

/// @nodoc
class _$ScientificResearchResponseCopyWithImpl<$Res,
        $Val extends ScientificResearchResponse>
    implements $ScientificResearchResponseCopyWith<$Res> {
  _$ScientificResearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScientificResearchResponseImplCopyWith<$Res>
    implements $ScientificResearchResponseCopyWith<$Res> {
  factory _$$ScientificResearchResponseImplCopyWith(
          _$ScientificResearchResponseImpl value,
          $Res Function(_$ScientificResearchResponseImpl) then) =
      __$$ScientificResearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? typeId, String? type, String? description});
}

/// @nodoc
class __$$ScientificResearchResponseImplCopyWithImpl<$Res>
    extends _$ScientificResearchResponseCopyWithImpl<$Res,
        _$ScientificResearchResponseImpl>
    implements _$$ScientificResearchResponseImplCopyWith<$Res> {
  __$$ScientificResearchResponseImplCopyWithImpl(
      _$ScientificResearchResponseImpl _value,
      $Res Function(_$ScientificResearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ScientificResearchResponseImpl(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScientificResearchResponseImpl implements _ScientificResearchResponse {
  const _$ScientificResearchResponseImpl(
      {this.typeId, this.type, this.description});

  factory _$ScientificResearchResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScientificResearchResponseImplFromJson(json);

  @override
  final int? typeId;
  @override
  final String? type;
  @override
  final String? description;

  @override
  String toString() {
    return 'ScientificResearchResponse(typeId: $typeId, type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScientificResearchResponseImpl &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, typeId, type, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScientificResearchResponseImplCopyWith<_$ScientificResearchResponseImpl>
      get copyWith => __$$ScientificResearchResponseImplCopyWithImpl<
          _$ScientificResearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScientificResearchResponseImplToJson(
      this,
    );
  }
}

abstract class _ScientificResearchResponse
    implements ScientificResearchResponse {
  const factory _ScientificResearchResponse(
      {final int? typeId,
      final String? type,
      final String? description}) = _$ScientificResearchResponseImpl;

  factory _ScientificResearchResponse.fromJson(Map<String, dynamic> json) =
      _$ScientificResearchResponseImpl.fromJson;

  @override
  int? get typeId;
  @override
  String? get type;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ScientificResearchResponseImplCopyWith<_$ScientificResearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
