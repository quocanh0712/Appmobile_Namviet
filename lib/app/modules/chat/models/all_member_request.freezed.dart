// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_member_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllMemberRequest _$AllMemberRequestFromJson(Map<String, dynamic> json) {
  return _AllMemberRequest.fromJson(json);
}

/// @nodoc
mixin _$AllMemberRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  int? get idRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMemberRequestCopyWith<AllMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMemberRequestCopyWith<$Res> {
  factory $AllMemberRequestCopyWith(
          AllMemberRequest value, $Res Function(AllMemberRequest) then) =
      _$AllMemberRequestCopyWithImpl<$Res, AllMemberRequest>;
  @useResult
  $Res call({String? iduser, int? startindex, int? length, int? idRoom});
}

/// @nodoc
class _$AllMemberRequestCopyWithImpl<$Res, $Val extends AllMemberRequest>
    implements $AllMemberRequestCopyWith<$Res> {
  _$AllMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? idRoom = freezed,
  }) {
    return _then(_value.copyWith(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      idRoom: freezed == idRoom
          ? _value.idRoom
          : idRoom // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllMemberRequestImplCopyWith<$Res>
    implements $AllMemberRequestCopyWith<$Res> {
  factory _$$AllMemberRequestImplCopyWith(_$AllMemberRequestImpl value,
          $Res Function(_$AllMemberRequestImpl) then) =
      __$$AllMemberRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? iduser, int? startindex, int? length, int? idRoom});
}

/// @nodoc
class __$$AllMemberRequestImplCopyWithImpl<$Res>
    extends _$AllMemberRequestCopyWithImpl<$Res, _$AllMemberRequestImpl>
    implements _$$AllMemberRequestImplCopyWith<$Res> {
  __$$AllMemberRequestImplCopyWithImpl(_$AllMemberRequestImpl _value,
      $Res Function(_$AllMemberRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? idRoom = freezed,
  }) {
    return _then(_$AllMemberRequestImpl(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      idRoom: freezed == idRoom
          ? _value.idRoom
          : idRoom // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllMemberRequestImpl implements _AllMemberRequest {
  _$AllMemberRequestImpl(
      {this.iduser, this.startindex, this.length, this.idRoom});

  factory _$AllMemberRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllMemberRequestImplFromJson(json);

  @override
  final String? iduser;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final int? idRoom;

  @override
  String toString() {
    return 'AllMemberRequest(iduser: $iduser, startindex: $startindex, length: $length, idRoom: $idRoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMemberRequestImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.idRoom, idRoom) || other.idRoom == idRoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iduser, startindex, length, idRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMemberRequestImplCopyWith<_$AllMemberRequestImpl> get copyWith =>
      __$$AllMemberRequestImplCopyWithImpl<_$AllMemberRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllMemberRequestImplToJson(
      this,
    );
  }
}

abstract class _AllMemberRequest implements AllMemberRequest {
  factory _AllMemberRequest(
      {final String? iduser,
      final int? startindex,
      final int? length,
      final int? idRoom}) = _$AllMemberRequestImpl;

  factory _AllMemberRequest.fromJson(Map<String, dynamic> json) =
      _$AllMemberRequestImpl.fromJson;

  @override
  String? get iduser;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  int? get idRoom;
  @override
  @JsonKey(ignore: true)
  _$$AllMemberRequestImplCopyWith<_$AllMemberRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
