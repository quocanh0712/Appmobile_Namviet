// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'working_process_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_WorkingProcessRequestCopyWith<$Res>
    implements $WorkingProcessRequestCopyWith<$Res> {
  factory _$$_WorkingProcessRequestCopyWith(_$_WorkingProcessRequest value,
          $Res Function(_$_WorkingProcessRequest) then) =
      __$$_WorkingProcessRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$_WorkingProcessRequestCopyWithImpl<$Res>
    extends _$WorkingProcessRequestCopyWithImpl<$Res, _$_WorkingProcessRequest>
    implements _$$_WorkingProcessRequestCopyWith<$Res> {
  __$$_WorkingProcessRequestCopyWithImpl(_$_WorkingProcessRequest _value,
      $Res Function(_$_WorkingProcessRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$_WorkingProcessRequest(
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
class _$_WorkingProcessRequest implements _WorkingProcessRequest {
  const _$_WorkingProcessRequest({this.startindex, this.length, this.keyword});

  factory _$_WorkingProcessRequest.fromJson(Map<String, dynamic> json) =>
      _$$_WorkingProcessRequestFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingProcessRequest &&
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
  _$$_WorkingProcessRequestCopyWith<_$_WorkingProcessRequest> get copyWith =>
      __$$_WorkingProcessRequestCopyWithImpl<_$_WorkingProcessRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkingProcessRequestToJson(
      this,
    );
  }
}

abstract class _WorkingProcessRequest implements WorkingProcessRequest {
  const factory _WorkingProcessRequest(
      {final int? startindex,
      final int? length,
      final String? keyword}) = _$_WorkingProcessRequest;

  factory _WorkingProcessRequest.fromJson(Map<String, dynamic> json) =
      _$_WorkingProcessRequest.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$_WorkingProcessRequestCopyWith<_$_WorkingProcessRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
