// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seminar_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeminarDetailRequest _$SeminarDetailRequestFromJson(Map<String, dynamic> json) {
  return _SeminarDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$SeminarDetailRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeminarDetailRequestCopyWith<SeminarDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeminarDetailRequestCopyWith<$Res> {
  factory $SeminarDetailRequestCopyWith(SeminarDetailRequest value,
          $Res Function(SeminarDetailRequest) then) =
      _$SeminarDetailRequestCopyWithImpl<$Res, SeminarDetailRequest>;
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class _$SeminarDetailRequestCopyWithImpl<$Res,
        $Val extends SeminarDetailRequest>
    implements $SeminarDetailRequestCopyWith<$Res> {
  _$SeminarDetailRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$SeminarDetailRequestImplCopyWith<$Res>
    implements $SeminarDetailRequestCopyWith<$Res> {
  factory _$$SeminarDetailRequestImplCopyWith(_$SeminarDetailRequestImpl value,
          $Res Function(_$SeminarDetailRequestImpl) then) =
      __$$SeminarDetailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length});
}

/// @nodoc
class __$$SeminarDetailRequestImplCopyWithImpl<$Res>
    extends _$SeminarDetailRequestCopyWithImpl<$Res, _$SeminarDetailRequestImpl>
    implements _$$SeminarDetailRequestImplCopyWith<$Res> {
  __$$SeminarDetailRequestImplCopyWithImpl(_$SeminarDetailRequestImpl _value,
      $Res Function(_$SeminarDetailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$SeminarDetailRequestImpl(
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
class _$SeminarDetailRequestImpl implements _SeminarDetailRequest {
  _$SeminarDetailRequestImpl({this.startindex, this.length});

  factory _$SeminarDetailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeminarDetailRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'SeminarDetailRequest(startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeminarDetailRequestImpl &&
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
  _$$SeminarDetailRequestImplCopyWith<_$SeminarDetailRequestImpl>
      get copyWith =>
          __$$SeminarDetailRequestImplCopyWithImpl<_$SeminarDetailRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeminarDetailRequestImplToJson(
      this,
    );
  }
}

abstract class _SeminarDetailRequest implements SeminarDetailRequest {
  factory _SeminarDetailRequest({final int? startindex, final int? length}) =
      _$SeminarDetailRequestImpl;

  factory _SeminarDetailRequest.fromJson(Map<String, dynamic> json) =
      _$SeminarDetailRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$SeminarDetailRequestImplCopyWith<_$SeminarDetailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
