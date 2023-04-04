// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scientific_research_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ScientificResearchRequestCopyWith<$Res>
    implements $ScientificResearchRequestCopyWith<$Res> {
  factory _$$_ScientificResearchRequestCopyWith(
          _$_ScientificResearchRequest value,
          $Res Function(_$_ScientificResearchRequest) then) =
      __$$_ScientificResearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$_ScientificResearchRequestCopyWithImpl<$Res>
    extends _$ScientificResearchRequestCopyWithImpl<$Res,
        _$_ScientificResearchRequest>
    implements _$$_ScientificResearchRequestCopyWith<$Res> {
  __$$_ScientificResearchRequestCopyWithImpl(
      _$_ScientificResearchRequest _value,
      $Res Function(_$_ScientificResearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_ScientificResearchRequest(
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
class _$_ScientificResearchRequest implements _ScientificResearchRequest {
  const _$_ScientificResearchRequest({this.startindex, this.length});

  factory _$_ScientificResearchRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ScientificResearchRequestFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'ScientificResearchRequest(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScientificResearchRequest &&
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
  _$$_ScientificResearchRequestCopyWith<_$_ScientificResearchRequest>
      get copyWith => __$$_ScientificResearchRequestCopyWithImpl<
          _$_ScientificResearchRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScientificResearchRequestToJson(
      this,
    );
  }
}

abstract class _ScientificResearchRequest implements ScientificResearchRequest {
  const factory _ScientificResearchRequest(
      {final int? startindex,
      final int? length}) = _$_ScientificResearchRequest;

  factory _ScientificResearchRequest.fromJson(Map<String, dynamic> json) =
      _$_ScientificResearchRequest.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$_ScientificResearchRequestCopyWith<_$_ScientificResearchRequest>
      get copyWith => throw _privateConstructorUsedError;
}
