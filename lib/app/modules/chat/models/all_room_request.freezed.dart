// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_room_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllRoomRequest _$AllRoomRequestFromJson(Map<String, dynamic> json) {
  return _AllRoomRequest.fromJson(json);
}

/// @nodoc
mixin _$AllRoomRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllRoomRequestCopyWith<AllRoomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllRoomRequestCopyWith<$Res> {
  factory $AllRoomRequestCopyWith(
          AllRoomRequest value, $Res Function(AllRoomRequest) then) =
      _$AllRoomRequestCopyWithImpl<$Res, AllRoomRequest>;
  @useResult
  $Res call({String? iduser, int? startindex, int? length});
}

/// @nodoc
class _$AllRoomRequestCopyWithImpl<$Res, $Val extends AllRoomRequest>
    implements $AllRoomRequestCopyWith<$Res> {
  _$AllRoomRequestCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllRoomRequestImplCopyWith<$Res>
    implements $AllRoomRequestCopyWith<$Res> {
  factory _$$AllRoomRequestImplCopyWith(_$AllRoomRequestImpl value,
          $Res Function(_$AllRoomRequestImpl) then) =
      __$$AllRoomRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? iduser, int? startindex, int? length});
}

/// @nodoc
class __$$AllRoomRequestImplCopyWithImpl<$Res>
    extends _$AllRoomRequestCopyWithImpl<$Res, _$AllRoomRequestImpl>
    implements _$$AllRoomRequestImplCopyWith<$Res> {
  __$$AllRoomRequestImplCopyWithImpl(
      _$AllRoomRequestImpl _value, $Res Function(_$AllRoomRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$AllRoomRequestImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllRoomRequestImpl implements _AllRoomRequest {
  _$AllRoomRequestImpl({this.iduser, this.startindex, this.length});

  factory _$AllRoomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllRoomRequestImplFromJson(json);

  @override
  final String? iduser;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'AllRoomRequest(iduser: $iduser, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllRoomRequestImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iduser, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllRoomRequestImplCopyWith<_$AllRoomRequestImpl> get copyWith =>
      __$$AllRoomRequestImplCopyWithImpl<_$AllRoomRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllRoomRequestImplToJson(
      this,
    );
  }
}

abstract class _AllRoomRequest implements AllRoomRequest {
  factory _AllRoomRequest(
      {final String? iduser,
      final int? startindex,
      final int? length}) = _$AllRoomRequestImpl;

  factory _AllRoomRequest.fromJson(Map<String, dynamic> json) =
      _$AllRoomRequestImpl.fromJson;

  @override
  String? get iduser;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$AllRoomRequestImplCopyWith<_$AllRoomRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
