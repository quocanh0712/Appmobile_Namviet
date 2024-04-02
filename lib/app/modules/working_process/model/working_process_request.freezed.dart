// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_process_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkingProcessRequest _$WorkingProcessRequestFromJson(
    Map<String, dynamic> json) {
  return _WorkingProcessRequest.fromJson(json);
}

/// @nodoc
mixin _$WorkingProcessRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingProcessRequestCopyWith<WorkingProcessRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingProcessRequestCopyWith<$Res> {
  factory $WorkingProcessRequestCopyWith(WorkingProcessRequest value,
          $Res Function(WorkingProcessRequest) then) =
      _$WorkingProcessRequestCopyWithImpl<$Res, WorkingProcessRequest>;
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class _$WorkingProcessRequestCopyWithImpl<$Res,
        $Val extends WorkingProcessRequest>
    implements $WorkingProcessRequestCopyWith<$Res> {
  _$WorkingProcessRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$WorkingProcessRequestImplCopyWith<$Res>
    implements $WorkingProcessRequestCopyWith<$Res> {
  factory _$$WorkingProcessRequestImplCopyWith(
          _$WorkingProcessRequestImpl value,
          $Res Function(_$WorkingProcessRequestImpl) then) =
      __$$WorkingProcessRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$WorkingProcessRequestImplCopyWithImpl<$Res>
    extends _$WorkingProcessRequestCopyWithImpl<$Res,
        _$WorkingProcessRequestImpl>
    implements _$$WorkingProcessRequestImplCopyWith<$Res> {
  __$$WorkingProcessRequestImplCopyWithImpl(_$WorkingProcessRequestImpl _value,
      $Res Function(_$WorkingProcessRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$WorkingProcessRequestImpl(
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
class _$WorkingProcessRequestImpl implements _WorkingProcessRequest {
  const _$WorkingProcessRequestImpl(
      {this.startindex, this.length, this.keyword});

  factory _$WorkingProcessRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingProcessRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;

  @override
  String toString() {
    return 'WorkingProcessRequest(startindex: $startindex, length: $length, keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingProcessRequestImpl &&
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
  _$$WorkingProcessRequestImplCopyWith<_$WorkingProcessRequestImpl>
      get copyWith => __$$WorkingProcessRequestImplCopyWithImpl<
          _$WorkingProcessRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingProcessRequestImplToJson(
      this,
    );
  }
}

abstract class _WorkingProcessRequest implements WorkingProcessRequest {
  const factory _WorkingProcessRequest(
      {final int? startindex,
      final int? length,
      final String? keyword}) = _$WorkingProcessRequestImpl;

  factory _WorkingProcessRequest.fromJson(Map<String, dynamic> json) =
      _$WorkingProcessRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$WorkingProcessRequestImplCopyWith<_$WorkingProcessRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
