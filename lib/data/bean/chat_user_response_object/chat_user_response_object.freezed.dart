// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatUserResponseObject _$ChatUserResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _ChatUserResponseObject.fromJson(json);
}

/// @nodoc
mixin _$ChatUserResponseObject {
  String? get name => throw _privateConstructorUsedError;
  String? get idUser => throw _privateConstructorUsedError;
  String? get className => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatUserResponseObjectCopyWith<ChatUserResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserResponseObjectCopyWith<$Res> {
  factory $ChatUserResponseObjectCopyWith(ChatUserResponseObject value,
          $Res Function(ChatUserResponseObject) then) =
      _$ChatUserResponseObjectCopyWithImpl<$Res, ChatUserResponseObject>;
  @useResult
  $Res call({String? name, String? idUser, String? className, String? image});
}

/// @nodoc
class _$ChatUserResponseObjectCopyWithImpl<$Res,
        $Val extends ChatUserResponseObject>
    implements $ChatUserResponseObjectCopyWith<$Res> {
  _$ChatUserResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? idUser = freezed,
    Object? className = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatUserResponseObjectImplCopyWith<$Res>
    implements $ChatUserResponseObjectCopyWith<$Res> {
  factory _$$ChatUserResponseObjectImplCopyWith(
          _$ChatUserResponseObjectImpl value,
          $Res Function(_$ChatUserResponseObjectImpl) then) =
      __$$ChatUserResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? idUser, String? className, String? image});
}

/// @nodoc
class __$$ChatUserResponseObjectImplCopyWithImpl<$Res>
    extends _$ChatUserResponseObjectCopyWithImpl<$Res,
        _$ChatUserResponseObjectImpl>
    implements _$$ChatUserResponseObjectImplCopyWith<$Res> {
  __$$ChatUserResponseObjectImplCopyWithImpl(
      _$ChatUserResponseObjectImpl _value,
      $Res Function(_$ChatUserResponseObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? idUser = freezed,
    Object? className = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ChatUserResponseObjectImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatUserResponseObjectImpl implements _ChatUserResponseObject {
  _$ChatUserResponseObjectImpl(
      {this.name, this.idUser, this.className, this.image});

  factory _$ChatUserResponseObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatUserResponseObjectImplFromJson(json);

  @override
  final String? name;
  @override
  final String? idUser;
  @override
  final String? className;
  @override
  final String? image;

  @override
  String toString() {
    return 'ChatUserResponseObject(name: $name, idUser: $idUser, className: $className, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserResponseObjectImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, idUser, className, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserResponseObjectImplCopyWith<_$ChatUserResponseObjectImpl>
      get copyWith => __$$ChatUserResponseObjectImplCopyWithImpl<
          _$ChatUserResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatUserResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _ChatUserResponseObject implements ChatUserResponseObject {
  factory _ChatUserResponseObject(
      {final String? name,
      final String? idUser,
      final String? className,
      final String? image}) = _$ChatUserResponseObjectImpl;

  factory _ChatUserResponseObject.fromJson(Map<String, dynamic> json) =
      _$ChatUserResponseObjectImpl.fromJson;

  @override
  String? get name;
  @override
  String? get idUser;
  @override
  String? get className;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ChatUserResponseObjectImplCopyWith<_$ChatUserResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
