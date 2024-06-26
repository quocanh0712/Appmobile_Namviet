// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoObject _$PhotoObjectFromJson(Map<String, dynamic> json) {
  return _PhotoObject.fromJson(json);
}

/// @nodoc
mixin _$PhotoObject {
  int? get albumId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @ColorJsonConverter()
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoObjectCopyWith<PhotoObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoObjectCopyWith<$Res> {
  factory $PhotoObjectCopyWith(
          PhotoObject value, $Res Function(PhotoObject) then) =
      _$PhotoObjectCopyWithImpl<$Res, PhotoObject>;
  @useResult
  $Res call(
      {int? albumId,
      int? id,
      String? title,
      String? url,
      String? thumbnailUrl,
      @ColorJsonConverter() Color? color});
}

/// @nodoc
class _$PhotoObjectCopyWithImpl<$Res, $Val extends PhotoObject>
    implements $PhotoObjectCopyWith<$Res> {
  _$PhotoObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoObjectImplCopyWith<$Res>
    implements $PhotoObjectCopyWith<$Res> {
  factory _$$PhotoObjectImplCopyWith(
          _$PhotoObjectImpl value, $Res Function(_$PhotoObjectImpl) then) =
      __$$PhotoObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? albumId,
      int? id,
      String? title,
      String? url,
      String? thumbnailUrl,
      @ColorJsonConverter() Color? color});
}

/// @nodoc
class __$$PhotoObjectImplCopyWithImpl<$Res>
    extends _$PhotoObjectCopyWithImpl<$Res, _$PhotoObjectImpl>
    implements _$$PhotoObjectImplCopyWith<$Res> {
  __$$PhotoObjectImplCopyWithImpl(
      _$PhotoObjectImpl _value, $Res Function(_$PhotoObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? color = freezed,
  }) {
    return _then(_$PhotoObjectImpl(
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoObjectImpl implements _PhotoObject {
  _$PhotoObjectImpl(
      {this.albumId,
      this.id,
      this.title,
      this.url,
      this.thumbnailUrl,
      @ColorJsonConverter() this.color});

  factory _$PhotoObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoObjectImplFromJson(json);

  @override
  final int? albumId;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? url;
  @override
  final String? thumbnailUrl;
  @override
  @ColorJsonConverter()
  final Color? color;

  @override
  String toString() {
    return 'PhotoObject(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoObjectImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, albumId, id, title, url, thumbnailUrl, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoObjectImplCopyWith<_$PhotoObjectImpl> get copyWith =>
      __$$PhotoObjectImplCopyWithImpl<_$PhotoObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoObjectImplToJson(
      this,
    );
  }
}

abstract class _PhotoObject implements PhotoObject {
  factory _PhotoObject(
      {final int? albumId,
      final int? id,
      final String? title,
      final String? url,
      final String? thumbnailUrl,
      @ColorJsonConverter() final Color? color}) = _$PhotoObjectImpl;

  factory _PhotoObject.fromJson(Map<String, dynamic> json) =
      _$PhotoObjectImpl.fromJson;

  @override
  int? get albumId;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get url;
  @override
  String? get thumbnailUrl;
  @override
  @ColorJsonConverter()
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$PhotoObjectImplCopyWith<_$PhotoObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
