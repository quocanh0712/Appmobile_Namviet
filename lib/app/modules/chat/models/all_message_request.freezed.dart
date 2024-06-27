// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllMessageRequest _$AllMessageRequestFromJson(Map<String, dynamic> json) {
  return _AllMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$AllMessageRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  int? get idRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMessageRequestCopyWith<AllMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMessageRequestCopyWith<$Res> {
  factory $AllMessageRequestCopyWith(
          AllMessageRequest value, $Res Function(AllMessageRequest) then) =
      _$AllMessageRequestCopyWithImpl<$Res, AllMessageRequest>;
  @useResult
  $Res call({String? iduser, int? startindex, int? length, int? idRoom});
}

/// @nodoc
class _$AllMessageRequestCopyWithImpl<$Res, $Val extends AllMessageRequest>
    implements $AllMessageRequestCopyWith<$Res> {
  _$AllMessageRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$AllMessageRequestImplCopyWith<$Res>
    implements $AllMessageRequestCopyWith<$Res> {
  factory _$$AllMessageRequestImplCopyWith(_$AllMessageRequestImpl value,
          $Res Function(_$AllMessageRequestImpl) then) =
      __$$AllMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? iduser, int? startindex, int? length, int? idRoom});
}

/// @nodoc
class __$$AllMessageRequestImplCopyWithImpl<$Res>
    extends _$AllMessageRequestCopyWithImpl<$Res, _$AllMessageRequestImpl>
    implements _$$AllMessageRequestImplCopyWith<$Res> {
  __$$AllMessageRequestImplCopyWithImpl(_$AllMessageRequestImpl _value,
      $Res Function(_$AllMessageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? idRoom = freezed,
  }) {
    return _then(_$AllMessageRequestImpl(
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
class _$AllMessageRequestImpl implements _AllMessageRequest {
  _$AllMessageRequestImpl(
      {this.iduser, this.startindex, this.length, this.idRoom});

  factory _$AllMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllMessageRequestImplFromJson(json);

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
    return 'AllMessageRequest(iduser: $iduser, startindex: $startindex, length: $length, idRoom: $idRoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMessageRequestImpl &&
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
  _$$AllMessageRequestImplCopyWith<_$AllMessageRequestImpl> get copyWith =>
      __$$AllMessageRequestImplCopyWithImpl<_$AllMessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _AllMessageRequest implements AllMessageRequest {
  factory _AllMessageRequest(
      {final String? iduser,
      final int? startindex,
      final int? length,
      final int? idRoom}) = _$AllMessageRequestImpl;

  factory _AllMessageRequest.fromJson(Map<String, dynamic> json) =
      _$AllMessageRequestImpl.fromJson;

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
  _$$AllMessageRequestImplCopyWith<_$AllMessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
