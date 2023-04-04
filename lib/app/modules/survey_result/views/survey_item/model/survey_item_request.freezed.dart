// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyItemRequest _$SurveyItemRequestFromJson(Map<String, dynamic> json) {
  return _SurveyItemRequest.fromJson(json);
}

/// @nodoc
mixin _$SurveyItemRequest {
  int? get id => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyItemRequestCopyWith<SurveyItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyItemRequestCopyWith<$Res> {
  factory $SurveyItemRequestCopyWith(
          SurveyItemRequest value, $Res Function(SurveyItemRequest) then) =
      _$SurveyItemRequestCopyWithImpl<$Res, SurveyItemRequest>;
  @useResult
  $Res call({int? id, int? startindex, int? length});
}

/// @nodoc
class _$SurveyItemRequestCopyWithImpl<$Res, $Val extends SurveyItemRequest>
    implements $SurveyItemRequestCopyWith<$Res> {
  _$SurveyItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_SurveyItemRequestCopyWith<$Res>
    implements $SurveyItemRequestCopyWith<$Res> {
  factory _$$_SurveyItemRequestCopyWith(_$_SurveyItemRequest value,
          $Res Function(_$_SurveyItemRequest) then) =
      __$$_SurveyItemRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? startindex, int? length});
}

/// @nodoc
class __$$_SurveyItemRequestCopyWithImpl<$Res>
    extends _$SurveyItemRequestCopyWithImpl<$Res, _$_SurveyItemRequest>
    implements _$$_SurveyItemRequestCopyWith<$Res> {
  __$$_SurveyItemRequestCopyWithImpl(
      _$_SurveyItemRequest _value, $Res Function(_$_SurveyItemRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_SurveyItemRequest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_SurveyItemRequest implements _SurveyItemRequest {
  const _$_SurveyItemRequest({this.id, this.startindex, this.length});

  factory _$_SurveyItemRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyItemRequestFromJson(json);

  @override
  final int? id;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'SurveyItemRequest(id: $id, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyItemRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyItemRequestCopyWith<_$_SurveyItemRequest> get copyWith =>
      __$$_SurveyItemRequestCopyWithImpl<_$_SurveyItemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyItemRequestToJson(
      this,
    );
  }
}

abstract class _SurveyItemRequest implements SurveyItemRequest {
  const factory _SurveyItemRequest(
      {final int? id,
      final int? startindex,
      final int? length}) = _$_SurveyItemRequest;

  factory _SurveyItemRequest.fromJson(Map<String, dynamic> json) =
      _$_SurveyItemRequest.fromJson;

  @override
  int? get id;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyItemRequestCopyWith<_$_SurveyItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
