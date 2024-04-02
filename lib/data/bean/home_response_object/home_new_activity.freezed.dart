// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_new_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeNewActivity _$HomeNewActivityFromJson(Map<String, dynamic> json) {
  return _HomeNewActivity.fromJson(json);
}

/// @nodoc
mixin _$HomeNewActivity {
  int? get id => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeNewActivityCopyWith<HomeNewActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNewActivityCopyWith<$Res> {
  factory $HomeNewActivityCopyWith(
          HomeNewActivity value, $Res Function(HomeNewActivity) then) =
      _$HomeNewActivityCopyWithImpl<$Res, HomeNewActivity>;
  @useResult
  $Res call(
      {int? id,
      String? icon,
      String? title,
      String? content,
      String? url,
      String? createDate});
}

/// @nodoc
class _$HomeNewActivityCopyWithImpl<$Res, $Val extends HomeNewActivity>
    implements $HomeNewActivityCopyWith<$Res> {
  _$HomeNewActivityCopyWithImpl(this._value, this._then);

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
    Object? url = freezed,
    Object? createDate = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeNewActivityImplCopyWith<$Res>
    implements $HomeNewActivityCopyWith<$Res> {
  factory _$$HomeNewActivityImplCopyWith(_$HomeNewActivityImpl value,
          $Res Function(_$HomeNewActivityImpl) then) =
      __$$HomeNewActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? icon,
      String? title,
      String? content,
      String? url,
      String? createDate});
}

/// @nodoc
class __$$HomeNewActivityImplCopyWithImpl<$Res>
    extends _$HomeNewActivityCopyWithImpl<$Res, _$HomeNewActivityImpl>
    implements _$$HomeNewActivityImplCopyWith<$Res> {
  __$$HomeNewActivityImplCopyWithImpl(
      _$HomeNewActivityImpl _value, $Res Function(_$HomeNewActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? icon = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? url = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$HomeNewActivityImpl(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeNewActivityImpl implements _HomeNewActivity {
  _$HomeNewActivityImpl(
      {this.id,
      this.icon,
      this.title,
      this.content,
      this.url,
      this.createDate});

  factory _$HomeNewActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeNewActivityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? icon;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? url;
  @override
  final String? createDate;

  @override
  String toString() {
    return 'HomeNewActivity(id: $id, icon: $icon, title: $title, content: $content, url: $url, createDate: $createDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeNewActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, icon, title, content, url, createDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeNewActivityImplCopyWith<_$HomeNewActivityImpl> get copyWith =>
      __$$HomeNewActivityImplCopyWithImpl<_$HomeNewActivityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeNewActivityImplToJson(
      this,
    );
  }
}

abstract class _HomeNewActivity implements HomeNewActivity {
  factory _HomeNewActivity(
      {final int? id,
      final String? icon,
      final String? title,
      final String? content,
      final String? url,
      final String? createDate}) = _$HomeNewActivityImpl;

  factory _HomeNewActivity.fromJson(Map<String, dynamic> json) =
      _$HomeNewActivityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get icon;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get url;
  @override
  String? get createDate;
  @override
  @JsonKey(ignore: true)
  _$$HomeNewActivityImplCopyWith<_$HomeNewActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
