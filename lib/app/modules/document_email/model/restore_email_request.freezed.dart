// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restore_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestoreEmailRequest _$RestoreEmailRequestFromJson(Map<String, dynamic> json) {
  return _RestoreEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$RestoreEmailRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get idUser => throw _privateConstructorUsedError;
  String? get loaiDelete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestoreEmailRequestCopyWith<RestoreEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestoreEmailRequestCopyWith<$Res> {
  factory $RestoreEmailRequestCopyWith(
          RestoreEmailRequest value, $Res Function(RestoreEmailRequest) then) =
      _$RestoreEmailRequestCopyWithImpl<$Res, RestoreEmailRequest>;
  @useResult
  $Res call({int? id, String? idUser, String? loaiDelete});
}

/// @nodoc
class _$RestoreEmailRequestCopyWithImpl<$Res, $Val extends RestoreEmailRequest>
    implements $RestoreEmailRequestCopyWith<$Res> {
  _$RestoreEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? loaiDelete = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      loaiDelete: freezed == loaiDelete
          ? _value.loaiDelete
          : loaiDelete // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestoreEmailRequestImplCopyWith<$Res>
    implements $RestoreEmailRequestCopyWith<$Res> {
  factory _$$RestoreEmailRequestImplCopyWith(_$RestoreEmailRequestImpl value,
          $Res Function(_$RestoreEmailRequestImpl) then) =
      __$$RestoreEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? idUser, String? loaiDelete});
}

/// @nodoc
class __$$RestoreEmailRequestImplCopyWithImpl<$Res>
    extends _$RestoreEmailRequestCopyWithImpl<$Res, _$RestoreEmailRequestImpl>
    implements _$$RestoreEmailRequestImplCopyWith<$Res> {
  __$$RestoreEmailRequestImplCopyWithImpl(_$RestoreEmailRequestImpl _value,
      $Res Function(_$RestoreEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? loaiDelete = freezed,
  }) {
    return _then(_$RestoreEmailRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      loaiDelete: freezed == loaiDelete
          ? _value.loaiDelete
          : loaiDelete // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestoreEmailRequestImpl implements _RestoreEmailRequest {
  _$RestoreEmailRequestImpl({this.id, this.idUser, this.loaiDelete});

  factory _$RestoreEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestoreEmailRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String? idUser;
  @override
  final String? loaiDelete;

  @override
  String toString() {
    return 'RestoreEmailRequest(id: $id, idUser: $idUser, loaiDelete: $loaiDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoreEmailRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.loaiDelete, loaiDelete) ||
                other.loaiDelete == loaiDelete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idUser, loaiDelete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoreEmailRequestImplCopyWith<_$RestoreEmailRequestImpl> get copyWith =>
      __$$RestoreEmailRequestImplCopyWithImpl<_$RestoreEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestoreEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _RestoreEmailRequest implements RestoreEmailRequest {
  factory _RestoreEmailRequest(
      {final int? id,
      final String? idUser,
      final String? loaiDelete}) = _$RestoreEmailRequestImpl;

  factory _RestoreEmailRequest.fromJson(Map<String, dynamic> json) =
      _$RestoreEmailRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String? get idUser;
  @override
  String? get loaiDelete;
  @override
  @JsonKey(ignore: true)
  _$$RestoreEmailRequestImplCopyWith<_$RestoreEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
