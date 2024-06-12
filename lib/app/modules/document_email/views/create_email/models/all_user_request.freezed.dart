// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllUserRequest _$AllUserRequestFromJson(Map<String, dynamic> json) {
  return _AllUserRequest.fromJson(json);
}

/// @nodoc
mixin _$AllUserRequest {
  String? get noiDung => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllUserRequestCopyWith<AllUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUserRequestCopyWith<$Res> {
  factory $AllUserRequestCopyWith(
          AllUserRequest value, $Res Function(AllUserRequest) then) =
      _$AllUserRequestCopyWithImpl<$Res, AllUserRequest>;
  @useResult
  $Res call({String? noiDung, int? startindex, int? length});
}

/// @nodoc
class _$AllUserRequestCopyWithImpl<$Res, $Val extends AllUserRequest>
    implements $AllUserRequestCopyWith<$Res> {
  _$AllUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noiDung = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      noiDung: freezed == noiDung
          ? _value.noiDung
          : noiDung // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$AllUserRequestImplCopyWith<$Res>
    implements $AllUserRequestCopyWith<$Res> {
  factory _$$AllUserRequestImplCopyWith(_$AllUserRequestImpl value,
          $Res Function(_$AllUserRequestImpl) then) =
      __$$AllUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? noiDung, int? startindex, int? length});
}

/// @nodoc
class __$$AllUserRequestImplCopyWithImpl<$Res>
    extends _$AllUserRequestCopyWithImpl<$Res, _$AllUserRequestImpl>
    implements _$$AllUserRequestImplCopyWith<$Res> {
  __$$AllUserRequestImplCopyWithImpl(
      _$AllUserRequestImpl _value, $Res Function(_$AllUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noiDung = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$AllUserRequestImpl(
      noiDung: freezed == noiDung
          ? _value.noiDung
          : noiDung // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$AllUserRequestImpl implements _AllUserRequest {
  _$AllUserRequestImpl({this.noiDung, this.startindex, this.length});

  factory _$AllUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllUserRequestImplFromJson(json);

  @override
  final String? noiDung;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'AllUserRequest(noiDung: $noiDung, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllUserRequestImpl &&
            (identical(other.noiDung, noiDung) || other.noiDung == noiDung) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, noiDung, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllUserRequestImplCopyWith<_$AllUserRequestImpl> get copyWith =>
      __$$AllUserRequestImplCopyWithImpl<_$AllUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllUserRequestImplToJson(
      this,
    );
  }
}

abstract class _AllUserRequest implements AllUserRequest {
  factory _AllUserRequest(
      {final String? noiDung,
      final int? startindex,
      final int? length}) = _$AllUserRequestImpl;

  factory _AllUserRequest.fromJson(Map<String, dynamic> json) =
      _$AllUserRequestImpl.fromJson;

  @override
  String? get noiDung;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$AllUserRequestImplCopyWith<_$AllUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
