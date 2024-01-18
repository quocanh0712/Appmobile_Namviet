// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityResponseObject _$ActivityResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _ActivityResponseObject.fromJson(json);
}

/// @nodoc
mixin _$ActivityResponseObject {
  String? get fullName => throw _privateConstructorUsedError;
  dynamic get onUserTap => throw _privateConstructorUsedError;
  dynamic get onArticleTap => throw _privateConstructorUsedError;
  String? get dateCreated => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityResponseObjectCopyWith<ActivityResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityResponseObjectCopyWith<$Res> {
  factory $ActivityResponseObjectCopyWith(ActivityResponseObject value,
          $Res Function(ActivityResponseObject) then) =
      _$ActivityResponseObjectCopyWithImpl<$Res, ActivityResponseObject>;
  @useResult
  $Res call(
      {String? fullName,
      dynamic onUserTap,
      dynamic onArticleTap,
      String? dateCreated,
      String? position,
      String? title,
      String? content,
      String? image});
}

/// @nodoc
class _$ActivityResponseObjectCopyWithImpl<$Res,
        $Val extends ActivityResponseObject>
    implements $ActivityResponseObjectCopyWith<$Res> {
  _$ActivityResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? onUserTap = null,
    Object? onArticleTap = null,
    Object? dateCreated = freezed,
    Object? position = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      onUserTap: null == onUserTap
          ? _value.onUserTap
          : onUserTap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onArticleTap: null == onArticleTap
          ? _value.onArticleTap
          : onArticleTap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActivityResponseObjectCopyWith<$Res>
    implements $ActivityResponseObjectCopyWith<$Res> {
  factory _$$_ActivityResponseObjectCopyWith(_$_ActivityResponseObject value,
          $Res Function(_$_ActivityResponseObject) then) =
      __$$_ActivityResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      dynamic onUserTap,
      dynamic onArticleTap,
      String? dateCreated,
      String? position,
      String? title,
      String? content,
      String? image});
}

/// @nodoc
class __$$_ActivityResponseObjectCopyWithImpl<$Res>
    extends _$ActivityResponseObjectCopyWithImpl<$Res,
        _$_ActivityResponseObject>
    implements _$$_ActivityResponseObjectCopyWith<$Res> {
  __$$_ActivityResponseObjectCopyWithImpl(_$_ActivityResponseObject _value,
      $Res Function(_$_ActivityResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? onUserTap = null,
    Object? onArticleTap = null,
    Object? dateCreated = freezed,
    Object? position = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_ActivityResponseObject(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      onUserTap: null == onUserTap ? _value.onUserTap : onUserTap,
      onArticleTap: null == onArticleTap ? _value.onArticleTap : onArticleTap,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_ActivityResponseObject implements _ActivityResponseObject {
  _$_ActivityResponseObject(
      {this.fullName,
      this.onUserTap = null,
      this.onArticleTap = null,
      this.dateCreated,
      this.position,
      this.title,
      this.content,
      this.image});

  factory _$_ActivityResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityResponseObjectFromJson(json);

  @override
  final String? fullName;
  @override
  @JsonKey()
  final dynamic onUserTap;
  @override
  @JsonKey()
  final dynamic onArticleTap;
  @override
  final String? dateCreated;
  @override
  final String? position;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? image;

  @override
  String toString() {
    return 'ActivityResponseObject(fullName: $fullName, onUserTap: $onUserTap, onArticleTap: $onArticleTap, dateCreated: $dateCreated, position: $position, title: $title, content: $content, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityResponseObject &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality().equals(other.onUserTap, onUserTap) &&
            const DeepCollectionEquality()
                .equals(other.onArticleTap, onArticleTap) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      const DeepCollectionEquality().hash(onUserTap),
      const DeepCollectionEquality().hash(onArticleTap),
      dateCreated,
      position,
      title,
      content,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivityResponseObjectCopyWith<_$_ActivityResponseObject> get copyWith =>
      __$$_ActivityResponseObjectCopyWithImpl<_$_ActivityResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityResponseObjectToJson(
      this,
    );
  }
}

abstract class _ActivityResponseObject implements ActivityResponseObject {
  factory _ActivityResponseObject(
      {final String? fullName,
      final dynamic onUserTap,
      final dynamic onArticleTap,
      final String? dateCreated,
      final String? position,
      final String? title,
      final String? content,
      final String? image}) = _$_ActivityResponseObject;

  factory _ActivityResponseObject.fromJson(Map<String, dynamic> json) =
      _$_ActivityResponseObject.fromJson;

  @override
  String? get fullName;
  @override
  dynamic get onUserTap;
  @override
  dynamic get onArticleTap;
  @override
  String? get dateCreated;
  @override
  String? get position;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityResponseObjectCopyWith<_$_ActivityResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
