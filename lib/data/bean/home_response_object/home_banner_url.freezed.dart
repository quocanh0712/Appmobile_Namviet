// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_banner_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeBannerUrl _$HomeBannerUrlFromJson(Map<String, dynamic> json) {
  return _HomeBannerUrl.fromJson(json);
}

/// @nodoc
mixin _$HomeBannerUrl {
  String? get imageurl => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeBannerUrlCopyWith<HomeBannerUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBannerUrlCopyWith<$Res> {
  factory $HomeBannerUrlCopyWith(
          HomeBannerUrl value, $Res Function(HomeBannerUrl) then) =
      _$HomeBannerUrlCopyWithImpl<$Res, HomeBannerUrl>;
  @useResult
  $Res call({String? imageurl, String? href});
}

/// @nodoc
class _$HomeBannerUrlCopyWithImpl<$Res, $Val extends HomeBannerUrl>
    implements $HomeBannerUrlCopyWith<$Res> {
  _$HomeBannerUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageurl = freezed,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      imageurl: freezed == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeBannerUrlCopyWith<$Res>
    implements $HomeBannerUrlCopyWith<$Res> {
  factory _$$_HomeBannerUrlCopyWith(
          _$_HomeBannerUrl value, $Res Function(_$_HomeBannerUrl) then) =
      __$$_HomeBannerUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageurl, String? href});
}

/// @nodoc
class __$$_HomeBannerUrlCopyWithImpl<$Res>
    extends _$HomeBannerUrlCopyWithImpl<$Res, _$_HomeBannerUrl>
    implements _$$_HomeBannerUrlCopyWith<$Res> {
  __$$_HomeBannerUrlCopyWithImpl(
      _$_HomeBannerUrl _value, $Res Function(_$_HomeBannerUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageurl = freezed,
    Object? href = freezed,
  }) {
    return _then(_$_HomeBannerUrl(
      imageurl: freezed == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeBannerUrl implements _HomeBannerUrl {
  _$_HomeBannerUrl({this.imageurl, this.href});

  factory _$_HomeBannerUrl.fromJson(Map<String, dynamic> json) =>
      _$$_HomeBannerUrlFromJson(json);

  @override
  final String? imageurl;
  @override
  final String? href;

  @override
  String toString() {
    return 'HomeBannerUrl(imageurl: $imageurl, href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeBannerUrl &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl) &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageurl, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeBannerUrlCopyWith<_$_HomeBannerUrl> get copyWith =>
      __$$_HomeBannerUrlCopyWithImpl<_$_HomeBannerUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeBannerUrlToJson(
      this,
    );
  }
}

abstract class _HomeBannerUrl implements HomeBannerUrl {
  factory _HomeBannerUrl({final String? imageurl, final String? href}) =
      _$_HomeBannerUrl;

  factory _HomeBannerUrl.fromJson(Map<String, dynamic> json) =
      _$_HomeBannerUrl.fromJson;

  @override
  String? get imageurl;
  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$_HomeBannerUrlCopyWith<_$_HomeBannerUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
