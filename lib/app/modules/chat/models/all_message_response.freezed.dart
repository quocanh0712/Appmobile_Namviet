// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllMessageResponse _$AllMessageResponseFromJson(Map<String, dynamic> json) {
  return _AllMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$AllMessageResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get iduser => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get idRoom => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  bool? get isSeen => throw _privateConstructorUsedError;
  bool? get isMine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMessageResponseCopyWith<AllMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMessageResponseCopyWith<$Res> {
  factory $AllMessageResponseCopyWith(
          AllMessageResponse value, $Res Function(AllMessageResponse) then) =
      _$AllMessageResponseCopyWithImpl<$Res, AllMessageResponse>;
  @useResult
  $Res call(
      {int? id,
      String? iduser,
      String? message,
      int? idRoom,
      String? createdDate,
      bool? isSeen,
      bool? isMine});
}

/// @nodoc
class _$AllMessageResponseCopyWithImpl<$Res, $Val extends AllMessageResponse>
    implements $AllMessageResponseCopyWith<$Res> {
  _$AllMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iduser = freezed,
    Object? message = freezed,
    Object? idRoom = freezed,
    Object? createdDate = freezed,
    Object? isSeen = freezed,
    Object? isMine = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      idRoom: freezed == idRoom
          ? _value.idRoom
          : idRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllMessageResponseImplCopyWith<$Res>
    implements $AllMessageResponseCopyWith<$Res> {
  factory _$$AllMessageResponseImplCopyWith(_$AllMessageResponseImpl value,
          $Res Function(_$AllMessageResponseImpl) then) =
      __$$AllMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? iduser,
      String? message,
      int? idRoom,
      String? createdDate,
      bool? isSeen,
      bool? isMine});
}

/// @nodoc
class __$$AllMessageResponseImplCopyWithImpl<$Res>
    extends _$AllMessageResponseCopyWithImpl<$Res, _$AllMessageResponseImpl>
    implements _$$AllMessageResponseImplCopyWith<$Res> {
  __$$AllMessageResponseImplCopyWithImpl(_$AllMessageResponseImpl _value,
      $Res Function(_$AllMessageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iduser = freezed,
    Object? message = freezed,
    Object? idRoom = freezed,
    Object? createdDate = freezed,
    Object? isSeen = freezed,
    Object? isMine = freezed,
  }) {
    return _then(_$AllMessageResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      idRoom: freezed == idRoom
          ? _value.idRoom
          : idRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMine: freezed == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllMessageResponseImpl implements _AllMessageResponse {
  _$AllMessageResponseImpl(
      {this.id,
      this.iduser,
      this.message,
      this.idRoom,
      this.createdDate,
      this.isSeen,
      this.isMine});

  factory _$AllMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllMessageResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? iduser;
  @override
  final String? message;
  @override
  final int? idRoom;
  @override
  final String? createdDate;
  @override
  final bool? isSeen;
  @override
  final bool? isMine;

  @override
  String toString() {
    return 'AllMessageResponse(id: $id, iduser: $iduser, message: $message, idRoom: $idRoom, createdDate: $createdDate, isSeen: $isSeen, isMine: $isMine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMessageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.idRoom, idRoom) || other.idRoom == idRoom) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen) &&
            (identical(other.isMine, isMine) || other.isMine == isMine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, iduser, message, idRoom, createdDate, isSeen, isMine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMessageResponseImplCopyWith<_$AllMessageResponseImpl> get copyWith =>
      __$$AllMessageResponseImplCopyWithImpl<_$AllMessageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _AllMessageResponse implements AllMessageResponse {
  factory _AllMessageResponse(
      {final int? id,
      final String? iduser,
      final String? message,
      final int? idRoom,
      final String? createdDate,
      final bool? isSeen,
      final bool? isMine}) = _$AllMessageResponseImpl;

  factory _AllMessageResponse.fromJson(Map<String, dynamic> json) =
      _$AllMessageResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get iduser;
  @override
  String? get message;
  @override
  int? get idRoom;
  @override
  String? get createdDate;
  @override
  bool? get isSeen;
  @override
  bool? get isMine;
  @override
  @JsonKey(ignore: true)
  _$$AllMessageResponseImplCopyWith<_$AllMessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
