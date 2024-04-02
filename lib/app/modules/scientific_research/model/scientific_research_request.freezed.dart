// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scientific_research_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScientificResearchRequest _$ScientificResearchRequestFromJson(
    Map<String, dynamic> json) {
  return _ScientificResearchRequest.fromJson(json);
}

/// @nodoc
mixin _$ScientificResearchRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScientificResearchRequestCopyWith<ScientificResearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScientificResearchRequestCopyWith<$Res> {
  factory $ScientificResearchRequestCopyWith(ScientificResearchRequest value,
          $Res Function(ScientificResearchRequest) then) =
      _$ScientificResearchRequestCopyWithImpl<$Res, ScientificResearchRequest>;
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class _$ScientificResearchRequestCopyWithImpl<$Res,
        $Val extends ScientificResearchRequest>
    implements $ScientificResearchRequestCopyWith<$Res> {
  _$ScientificResearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScientificResearchRequestImplCopyWith<$Res>
    implements $ScientificResearchRequestCopyWith<$Res> {
  factory _$$ScientificResearchRequestImplCopyWith(
          _$ScientificResearchRequestImpl value,
          $Res Function(_$ScientificResearchRequestImpl) then) =
      __$$ScientificResearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$ScientificResearchRequestImplCopyWithImpl<$Res>
    extends _$ScientificResearchRequestCopyWithImpl<$Res,
        _$ScientificResearchRequestImpl>
    implements _$$ScientificResearchRequestImplCopyWith<$Res> {
  __$$ScientificResearchRequestImplCopyWithImpl(
      _$ScientificResearchRequestImpl _value,
      $Res Function(_$ScientificResearchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$ScientificResearchRequestImpl(
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScientificResearchRequestImpl implements _ScientificResearchRequest {
  const _$ScientificResearchRequestImpl({this.startindex, this.length});

  factory _$ScientificResearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScientificResearchRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'ScientificResearchRequest(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScientificResearchRequestImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScientificResearchRequestImplCopyWith<_$ScientificResearchRequestImpl>
      get copyWith => __$$ScientificResearchRequestImplCopyWithImpl<
          _$ScientificResearchRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScientificResearchRequestImplToJson(
      this,
    );
  }
}

abstract class _ScientificResearchRequest implements ScientificResearchRequest {
  const factory _ScientificResearchRequest(
      {final int? startindex,
      final int? length}) = _$ScientificResearchRequestImpl;

  factory _ScientificResearchRequest.fromJson(Map<String, dynamic> json) =
      _$ScientificResearchRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$ScientificResearchRequestImplCopyWith<_$ScientificResearchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
