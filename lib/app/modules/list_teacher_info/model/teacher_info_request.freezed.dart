// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherInfoRequest _$TeacherInfoRequestFromJson(Map<String, dynamic> json) {
  return _TeacherInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$TeacherInfoRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherInfoRequestCopyWith<TeacherInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherInfoRequestCopyWith<$Res> {
  factory $TeacherInfoRequestCopyWith(
          TeacherInfoRequest value, $Res Function(TeacherInfoRequest) then) =
      _$TeacherInfoRequestCopyWithImpl<$Res, TeacherInfoRequest>;
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class _$TeacherInfoRequestCopyWithImpl<$Res, $Val extends TeacherInfoRequest>
    implements $TeacherInfoRequestCopyWith<$Res> {
  _$TeacherInfoRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$TeacherInfoRequestImplCopyWith<$Res>
    implements $TeacherInfoRequestCopyWith<$Res> {
  factory _$$TeacherInfoRequestImplCopyWith(_$TeacherInfoRequestImpl value,
          $Res Function(_$TeacherInfoRequestImpl) then) =
      __$$TeacherInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$TeacherInfoRequestImplCopyWithImpl<$Res>
    extends _$TeacherInfoRequestCopyWithImpl<$Res, _$TeacherInfoRequestImpl>
    implements _$$TeacherInfoRequestImplCopyWith<$Res> {
  __$$TeacherInfoRequestImplCopyWithImpl(_$TeacherInfoRequestImpl _value,
      $Res Function(_$TeacherInfoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$TeacherInfoRequestImpl(
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
class _$TeacherInfoRequestImpl implements _TeacherInfoRequest {
  const _$TeacherInfoRequestImpl({this.startindex, this.length, this.keyword});

  factory _$TeacherInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherInfoRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;

  @override
  String toString() {
    return 'TeacherInfoRequest(startindex: $startindex, length: $length, keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherInfoRequestImpl &&
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
  _$$TeacherInfoRequestImplCopyWith<_$TeacherInfoRequestImpl> get copyWith =>
      __$$TeacherInfoRequestImplCopyWithImpl<_$TeacherInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _TeacherInfoRequest implements TeacherInfoRequest {
  const factory _TeacherInfoRequest(
      {final int? startindex,
      final int? length,
      final String? keyword}) = _$TeacherInfoRequestImpl;

  factory _TeacherInfoRequest.fromJson(Map<String, dynamic> json) =
      _$TeacherInfoRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$TeacherInfoRequestImplCopyWith<_$TeacherInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
