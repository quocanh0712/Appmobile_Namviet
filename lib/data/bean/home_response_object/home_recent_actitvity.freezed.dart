// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_recent_actitvity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeRecentActitvity _$HomeRecentActitvityFromJson(Map<String, dynamic> json) {
  return _HomeRecentActitvity.fromJson(json);
}

/// @nodoc
mixin _$HomeRecentActitvity {
  int? get id => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeRecentActitvityCopyWith<HomeRecentActitvity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRecentActitvityCopyWith<$Res> {
  factory $HomeRecentActitvityCopyWith(
          HomeRecentActitvity value, $Res Function(HomeRecentActitvity) then) =
      _$HomeRecentActitvityCopyWithImpl<$Res, HomeRecentActitvity>;
  @useResult
  $Res call({int? id, String? icon, String? title, String? content});
}

/// @nodoc
class _$HomeRecentActitvityCopyWithImpl<$Res, $Val extends HomeRecentActitvity>
    implements $HomeRecentActitvityCopyWith<$Res> {
  _$HomeRecentActitvityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? icon = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_HomeRecentActitvityCopyWith<$Res>
    implements $HomeRecentActitvityCopyWith<$Res> {
  factory _$$_HomeRecentActitvityCopyWith(_$_HomeRecentActitvity value,
          $Res Function(_$_HomeRecentActitvity) then) =
      __$$_HomeRecentActitvityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? icon, String? title, String? content});
}

/// @nodoc
class __$$_HomeRecentActitvityCopyWithImpl<$Res>
    extends _$HomeRecentActitvityCopyWithImpl<$Res, _$_HomeRecentActitvity>
    implements _$$_HomeRecentActitvityCopyWith<$Res> {
  __$$_HomeRecentActitvityCopyWithImpl(_$_HomeRecentActitvity _value,
      $Res Function(_$_HomeRecentActitvity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? icon = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_HomeRecentActitvity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
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
class _$_HomeRecentActitvity implements _HomeRecentActitvity {
  _$_HomeRecentActitvity({this.id, this.icon, this.title, this.content});

  factory _$_HomeRecentActitvity.fromJson(Map<String, dynamic> json) =>
      _$$_HomeRecentActitvityFromJson(json);

  @override
  final int? id;
  @override
  final String? icon;
  @override
  final String? title;
  @override
  final String? content;

  @override
  String toString() {
    return 'HomeRecentActitvity(id: $id, icon: $icon, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeRecentActitvity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, icon, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeRecentActitvityCopyWith<_$_HomeRecentActitvity> get copyWith =>
      __$$_HomeRecentActitvityCopyWithImpl<_$_HomeRecentActitvity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeRecentActitvityToJson(
      this,
    );
  }
}

abstract class _HomeRecentActitvity implements HomeRecentActitvity {
  factory _HomeRecentActitvity(
      {final int? id,
      final String? icon,
      final String? title,
      final String? content}) = _$_HomeRecentActitvity;

  factory _HomeRecentActitvity.fromJson(Map<String, dynamic> json) =
      _$_HomeRecentActitvity.fromJson;

  @override
  int? get id;
  @override
  String? get icon;
  @override
  String? get title;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_HomeRecentActitvityCopyWith<_$_HomeRecentActitvity> get copyWith =>
      throw _privateConstructorUsedError;
}
