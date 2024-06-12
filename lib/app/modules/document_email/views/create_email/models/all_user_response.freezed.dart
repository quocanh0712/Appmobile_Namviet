// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllUserResponse _$AllUserResponseFromJson(Map<String, dynamic> json) {
  return _AllUserResponse.fromJson(json);
}

/// @nodoc
mixin _$AllUserResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllUserResponseCopyWith<AllUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUserResponseCopyWith<$Res> {
  factory $AllUserResponseCopyWith(
          AllUserResponse value, $Res Function(AllUserResponse) then) =
      _$AllUserResponseCopyWithImpl<$Res, AllUserResponse>;
  @useResult
  $Res call({int? id, String? username, String? fullName});
}

/// @nodoc
class _$AllUserResponseCopyWithImpl<$Res, $Val extends AllUserResponse>
    implements $AllUserResponseCopyWith<$Res> {
  _$AllUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllUserResponseImplCopyWith<$Res>
    implements $AllUserResponseCopyWith<$Res> {
  factory _$$AllUserResponseImplCopyWith(_$AllUserResponseImpl value,
          $Res Function(_$AllUserResponseImpl) then) =
      __$$AllUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? username, String? fullName});
}

/// @nodoc
class __$$AllUserResponseImplCopyWithImpl<$Res>
    extends _$AllUserResponseCopyWithImpl<$Res, _$AllUserResponseImpl>
    implements _$$AllUserResponseImplCopyWith<$Res> {
  __$$AllUserResponseImplCopyWithImpl(
      _$AllUserResponseImpl _value, $Res Function(_$AllUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_$AllUserResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllUserResponseImpl implements _AllUserResponse {
  _$AllUserResponseImpl({this.id, this.username, this.fullName});

  factory _$AllUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllUserResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'AllUserResponse(id: $id, username: $username, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllUserResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllUserResponseImplCopyWith<_$AllUserResponseImpl> get copyWith =>
      __$$AllUserResponseImplCopyWithImpl<_$AllUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllUserResponseImplToJson(
      this,
    );
  }
}

abstract class _AllUserResponse implements AllUserResponse {
  factory _AllUserResponse(
      {final int? id,
      final String? username,
      final String? fullName}) = _$AllUserResponseImpl;

  factory _AllUserResponse.fromJson(Map<String, dynamic> json) =
      _$AllUserResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$AllUserResponseImplCopyWith<_$AllUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
