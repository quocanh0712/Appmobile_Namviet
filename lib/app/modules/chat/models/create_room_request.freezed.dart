// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_room_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRoomRequest _$CreateRoomRequestFromJson(Map<String, dynamic> json) {
  return _CreateRoomRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateRoomRequest {
  String? get roomName => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRoomRequestCopyWith<CreateRoomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomRequestCopyWith<$Res> {
  factory $CreateRoomRequestCopyWith(
          CreateRoomRequest value, $Res Function(CreateRoomRequest) then) =
      _$CreateRoomRequestCopyWithImpl<$Res, CreateRoomRequest>;
  @useResult
  $Res call({String? roomName, String? createdBy});
}

/// @nodoc
class _$CreateRoomRequestCopyWithImpl<$Res, $Val extends CreateRoomRequest>
    implements $CreateRoomRequestCopyWith<$Res> {
  _$CreateRoomRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRoomRequestImplCopyWith<$Res>
    implements $CreateRoomRequestCopyWith<$Res> {
  factory _$$CreateRoomRequestImplCopyWith(_$CreateRoomRequestImpl value,
          $Res Function(_$CreateRoomRequestImpl) then) =
      __$$CreateRoomRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? roomName, String? createdBy});
}

/// @nodoc
class __$$CreateRoomRequestImplCopyWithImpl<$Res>
    extends _$CreateRoomRequestCopyWithImpl<$Res, _$CreateRoomRequestImpl>
    implements _$$CreateRoomRequestImplCopyWith<$Res> {
  __$$CreateRoomRequestImplCopyWithImpl(_$CreateRoomRequestImpl _value,
      $Res Function(_$CreateRoomRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$CreateRoomRequestImpl(
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRoomRequestImpl implements _CreateRoomRequest {
  _$CreateRoomRequestImpl({this.roomName, this.createdBy});

  factory _$CreateRoomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRoomRequestImplFromJson(json);

  @override
  final String? roomName;
  @override
  final String? createdBy;

  @override
  String toString() {
    return 'CreateRoomRequest(roomName: $roomName, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomRequestImpl &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomName, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoomRequestImplCopyWith<_$CreateRoomRequestImpl> get copyWith =>
      __$$CreateRoomRequestImplCopyWithImpl<_$CreateRoomRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRoomRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateRoomRequest implements CreateRoomRequest {
  factory _CreateRoomRequest(
      {final String? roomName,
      final String? createdBy}) = _$CreateRoomRequestImpl;

  factory _CreateRoomRequest.fromJson(Map<String, dynamic> json) =
      _$CreateRoomRequestImpl.fromJson;

  @override
  String? get roomName;
  @override
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$CreateRoomRequestImplCopyWith<_$CreateRoomRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
