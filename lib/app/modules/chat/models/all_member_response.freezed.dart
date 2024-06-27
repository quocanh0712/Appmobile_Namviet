// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_member_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllMemberResponse _$AllMemberResponseFromJson(Map<String, dynamic> json) {
  return _AllMemberResponse.fromJson(json);
}

/// @nodoc
mixin _$AllMemberResponse {
  int? get id => throw _privateConstructorUsedError;
  int? get idRoom => throw _privateConstructorUsedError;
  String? get iduser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMemberResponseCopyWith<AllMemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMemberResponseCopyWith<$Res> {
  factory $AllMemberResponseCopyWith(
          AllMemberResponse value, $Res Function(AllMemberResponse) then) =
      _$AllMemberResponseCopyWithImpl<$Res, AllMemberResponse>;
  @useResult
  $Res call({int? id, int? idRoom, String? iduser});
}

/// @nodoc
class _$AllMemberResponseCopyWithImpl<$Res, $Val extends AllMemberResponse>
    implements $AllMemberResponseCopyWith<$Res> {
  _$AllMemberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idRoom = freezed,
    Object? iduser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idRoom: freezed == idRoom
          ? _value.idRoom
          : idRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllMemberResponseImplCopyWith<$Res>
    implements $AllMemberResponseCopyWith<$Res> {
  factory _$$AllMemberResponseImplCopyWith(_$AllMemberResponseImpl value,
          $Res Function(_$AllMemberResponseImpl) then) =
      __$$AllMemberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? idRoom, String? iduser});
}

/// @nodoc
class __$$AllMemberResponseImplCopyWithImpl<$Res>
    extends _$AllMemberResponseCopyWithImpl<$Res, _$AllMemberResponseImpl>
    implements _$$AllMemberResponseImplCopyWith<$Res> {
  __$$AllMemberResponseImplCopyWithImpl(_$AllMemberResponseImpl _value,
      $Res Function(_$AllMemberResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idRoom = freezed,
    Object? iduser = freezed,
  }) {
    return _then(_$AllMemberResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idRoom: freezed == idRoom
          ? _value.idRoom
          : idRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllMemberResponseImpl implements _AllMemberResponse {
  _$AllMemberResponseImpl({this.id, this.idRoom, this.iduser});

  factory _$AllMemberResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllMemberResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final int? idRoom;
  @override
  final String? iduser;

  @override
  String toString() {
    return 'AllMemberResponse(id: $id, idRoom: $idRoom, iduser: $iduser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMemberResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idRoom, idRoom) || other.idRoom == idRoom) &&
            (identical(other.iduser, iduser) || other.iduser == iduser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idRoom, iduser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMemberResponseImplCopyWith<_$AllMemberResponseImpl> get copyWith =>
      __$$AllMemberResponseImplCopyWithImpl<_$AllMemberResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllMemberResponseImplToJson(
      this,
    );
  }
}

abstract class _AllMemberResponse implements AllMemberResponse {
  factory _AllMemberResponse(
      {final int? id,
      final int? idRoom,
      final String? iduser}) = _$AllMemberResponseImpl;

  factory _AllMemberResponse.fromJson(Map<String, dynamic> json) =
      _$AllMemberResponseImpl.fromJson;

  @override
  int? get id;
  @override
  int? get idRoom;
  @override
  String? get iduser;
  @override
  @JsonKey(ignore: true)
  _$$AllMemberResponseImplCopyWith<_$AllMemberResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
