// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteEmailRequest _$DeleteEmailRequestFromJson(Map<String, dynamic> json) {
  return _DeleteEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteEmailRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get idUser => throw _privateConstructorUsedError;
  String? get loaiDelete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteEmailRequestCopyWith<DeleteEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteEmailRequestCopyWith<$Res> {
  factory $DeleteEmailRequestCopyWith(
          DeleteEmailRequest value, $Res Function(DeleteEmailRequest) then) =
      _$DeleteEmailRequestCopyWithImpl<$Res, DeleteEmailRequest>;
  @useResult
  $Res call({int? id, String? idUser, String? loaiDelete});
}

/// @nodoc
class _$DeleteEmailRequestCopyWithImpl<$Res, $Val extends DeleteEmailRequest>
    implements $DeleteEmailRequestCopyWith<$Res> {
  _$DeleteEmailRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteEmailRequestImplCopyWith<$Res>
    implements $DeleteEmailRequestCopyWith<$Res> {
  factory _$$DeleteEmailRequestImplCopyWith(_$DeleteEmailRequestImpl value,
          $Res Function(_$DeleteEmailRequestImpl) then) =
      __$$DeleteEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? idUser, String? loaiDelete});
}

/// @nodoc
class __$$DeleteEmailRequestImplCopyWithImpl<$Res>
    extends _$DeleteEmailRequestCopyWithImpl<$Res, _$DeleteEmailRequestImpl>
    implements _$$DeleteEmailRequestImplCopyWith<$Res> {
  __$$DeleteEmailRequestImplCopyWithImpl(_$DeleteEmailRequestImpl _value,
      $Res Function(_$DeleteEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idUser = freezed,
    Object? loaiDelete = freezed,
  }) {
    return _then(_$DeleteEmailRequestImpl(
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
class _$DeleteEmailRequestImpl implements _DeleteEmailRequest {
  _$DeleteEmailRequestImpl({this.id, this.idUser, this.loaiDelete});

  factory _$DeleteEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteEmailRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String? idUser;
  @override
  final String? loaiDelete;

  @override
  String toString() {
    return 'DeleteEmailRequest(id: $id, idUser: $idUser, loaiDelete: $loaiDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmailRequestImpl &&
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
  _$$DeleteEmailRequestImplCopyWith<_$DeleteEmailRequestImpl> get copyWith =>
      __$$DeleteEmailRequestImplCopyWithImpl<_$DeleteEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteEmailRequest implements DeleteEmailRequest {
  factory _DeleteEmailRequest(
      {final int? id,
      final String? idUser,
      final String? loaiDelete}) = _$DeleteEmailRequestImpl;

  factory _DeleteEmailRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteEmailRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String? get idUser;
  @override
  String? get loaiDelete;
  @override
  @JsonKey(ignore: true)
  _$$DeleteEmailRequestImplCopyWith<_$DeleteEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
