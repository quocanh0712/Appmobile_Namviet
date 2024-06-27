// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_room_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllRoomResponse _$AllRoomResponseFromJson(Map<String, dynamic> json) {
  return _AllRoomResponse.fromJson(json);
}

/// @nodoc
mixin _$AllRoomResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get roomName => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllRoomResponseCopyWith<AllRoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllRoomResponseCopyWith<$Res> {
  factory $AllRoomResponseCopyWith(
          AllRoomResponse value, $Res Function(AllRoomResponse) then) =
      _$AllRoomResponseCopyWithImpl<$Res, AllRoomResponse>;
  @useResult
  $Res call(
      {int? id, String? roomName, String? createdDate, String? createdBy});
}

/// @nodoc
class _$AllRoomResponseCopyWithImpl<$Res, $Val extends AllRoomResponse>
    implements $AllRoomResponseCopyWith<$Res> {
  _$AllRoomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomName = freezed,
    Object? createdDate = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllRoomResponseImplCopyWith<$Res>
    implements $AllRoomResponseCopyWith<$Res> {
  factory _$$AllRoomResponseImplCopyWith(_$AllRoomResponseImpl value,
          $Res Function(_$AllRoomResponseImpl) then) =
      __$$AllRoomResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? roomName, String? createdDate, String? createdBy});
}

/// @nodoc
class __$$AllRoomResponseImplCopyWithImpl<$Res>
    extends _$AllRoomResponseCopyWithImpl<$Res, _$AllRoomResponseImpl>
    implements _$$AllRoomResponseImplCopyWith<$Res> {
  __$$AllRoomResponseImplCopyWithImpl(
      _$AllRoomResponseImpl _value, $Res Function(_$AllRoomResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomName = freezed,
    Object? createdDate = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$AllRoomResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roomName: freezed == roomName
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
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
class _$AllRoomResponseImpl implements _AllRoomResponse {
  _$AllRoomResponseImpl(
      {this.id, this.roomName, this.createdDate, this.createdBy});

  factory _$AllRoomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllRoomResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? roomName;
  @override
  final String? createdDate;
  @override
  final String? createdBy;

  @override
  String toString() {
    return 'AllRoomResponse(id: $id, roomName: $roomName, createdDate: $createdDate, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllRoomResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, roomName, createdDate, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllRoomResponseImplCopyWith<_$AllRoomResponseImpl> get copyWith =>
      __$$AllRoomResponseImplCopyWithImpl<_$AllRoomResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllRoomResponseImplToJson(
      this,
    );
  }
}

abstract class _AllRoomResponse implements AllRoomResponse {
  factory _AllRoomResponse(
      {final int? id,
      final String? roomName,
      final String? createdDate,
      final String? createdBy}) = _$AllRoomResponseImpl;

  factory _AllRoomResponse.fromJson(Map<String, dynamic> json) =
      _$AllRoomResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get roomName;
  @override
  String? get createdDate;
  @override
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$AllRoomResponseImplCopyWith<_$AllRoomResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
