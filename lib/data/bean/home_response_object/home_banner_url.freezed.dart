// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_banner_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$HomeBannerUrlImplCopyWith<$Res>
    implements $HomeBannerUrlCopyWith<$Res> {
  factory _$$HomeBannerUrlImplCopyWith(
          _$HomeBannerUrlImpl value, $Res Function(_$HomeBannerUrlImpl) then) =
      __$$HomeBannerUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageurl, String? href});
}

/// @nodoc
class __$$HomeBannerUrlImplCopyWithImpl<$Res>
    extends _$HomeBannerUrlCopyWithImpl<$Res, _$HomeBannerUrlImpl>
    implements _$$HomeBannerUrlImplCopyWith<$Res> {
  __$$HomeBannerUrlImplCopyWithImpl(
      _$HomeBannerUrlImpl _value, $Res Function(_$HomeBannerUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageurl = freezed,
    Object? href = freezed,
  }) {
    return _then(_$HomeBannerUrlImpl(
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
class _$HomeBannerUrlImpl implements _HomeBannerUrl {
  _$HomeBannerUrlImpl({this.imageurl, this.href});

  factory _$HomeBannerUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeBannerUrlImplFromJson(json);

  @override
  final String? imageurl;
  @override
  final String? href;

  @override
  String toString() {
    return 'HomeBannerUrl(imageurl: $imageurl, href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBannerUrlImpl &&
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
  _$$HomeBannerUrlImplCopyWith<_$HomeBannerUrlImpl> get copyWith =>
      __$$HomeBannerUrlImplCopyWithImpl<_$HomeBannerUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeBannerUrlImplToJson(
      this,
    );
  }
}

abstract class _HomeBannerUrl implements HomeBannerUrl {
  factory _HomeBannerUrl({final String? imageurl, final String? href}) =
      _$HomeBannerUrlImpl;

  factory _HomeBannerUrl.fromJson(Map<String, dynamic> json) =
      _$HomeBannerUrlImpl.fromJson;

  @override
  String? get imageurl;
  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$HomeBannerUrlImplCopyWith<_$HomeBannerUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
