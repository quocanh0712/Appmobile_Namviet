// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_outstanding_actitvity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeOutstandingActitvity _$HomeOutstandingActitvityFromJson(
    Map<String, dynamic> json) {
  return _HomeOutstandingActitvity.fromJson(json);
}

/// @nodoc
mixin _$HomeOutstandingActitvity {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeOutstandingActitvityCopyWith<HomeOutstandingActitvity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeOutstandingActitvityCopyWith<$Res> {
  factory $HomeOutstandingActitvityCopyWith(HomeOutstandingActitvity value,
          $Res Function(HomeOutstandingActitvity) then) =
      _$HomeOutstandingActitvityCopyWithImpl<$Res, HomeOutstandingActitvity>;
  @useResult
  $Res call({int? id, String? image, String? title, String? content});
}

/// @nodoc
class _$HomeOutstandingActitvityCopyWithImpl<$Res,
        $Val extends HomeOutstandingActitvity>
    implements $HomeOutstandingActitvityCopyWith<$Res> {
  _$HomeOutstandingActitvityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeOutstandingActitvityCopyWith<$Res>
    implements $HomeOutstandingActitvityCopyWith<$Res> {
  factory _$$_HomeOutstandingActitvityCopyWith(
          _$_HomeOutstandingActitvity value,
          $Res Function(_$_HomeOutstandingActitvity) then) =
      __$$_HomeOutstandingActitvityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image, String? title, String? content});
}

/// @nodoc
class __$$_HomeOutstandingActitvityCopyWithImpl<$Res>
    extends _$HomeOutstandingActitvityCopyWithImpl<$Res,
        _$_HomeOutstandingActitvity>
    implements _$$_HomeOutstandingActitvityCopyWith<$Res> {
  __$$_HomeOutstandingActitvityCopyWithImpl(_$_HomeOutstandingActitvity _value,
      $Res Function(_$_HomeOutstandingActitvity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_HomeOutstandingActitvity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeOutstandingActitvity implements _HomeOutstandingActitvity {
  _$_HomeOutstandingActitvity({this.id, this.image, this.title, this.content});

  factory _$_HomeOutstandingActitvity.fromJson(Map<String, dynamic> json) =>
      _$$_HomeOutstandingActitvityFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? title;
  @override
  final String? content;

  @override
  String toString() {
    return 'HomeOutstandingActitvity(id: $id, image: $image, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeOutstandingActitvity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeOutstandingActitvityCopyWith<_$_HomeOutstandingActitvity>
      get copyWith => __$$_HomeOutstandingActitvityCopyWithImpl<
          _$_HomeOutstandingActitvity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeOutstandingActitvityToJson(
      this,
    );
  }
}

abstract class _HomeOutstandingActitvity implements HomeOutstandingActitvity {
  factory _HomeOutstandingActitvity(
      {final int? id,
      final String? image,
      final String? title,
      final String? content}) = _$_HomeOutstandingActitvity;

  factory _HomeOutstandingActitvity.fromJson(Map<String, dynamic> json) =
      _$_HomeOutstandingActitvity.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get title;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_HomeOutstandingActitvityCopyWith<_$_HomeOutstandingActitvity>
      get copyWith => throw _privateConstructorUsedError;
}
