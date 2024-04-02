// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elearning_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ELearningResponse _$ELearningResponseFromJson(Map<String, dynamic> json) {
  return _ELearningResponse.fromJson(json);
}

/// @nodoc
mixin _$ELearningResponse {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ELearningResponseCopyWith<ELearningResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ELearningResponseCopyWith<$Res> {
  factory $ELearningResponseCopyWith(
          ELearningResponse value, $Res Function(ELearningResponse) then) =
      _$ELearningResponseCopyWithImpl<$Res, ELearningResponse>;
  @useResult
  $Res call(
      {String? imageUrl,
      String? title,
      String? time,
      String? teacher,
      String? link});
}

/// @nodoc
class _$ELearningResponseCopyWithImpl<$Res, $Val extends ELearningResponse>
    implements $ELearningResponseCopyWith<$Res> {
  _$ELearningResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? time = freezed,
    Object? teacher = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ELearningResponseImplCopyWith<$Res>
    implements $ELearningResponseCopyWith<$Res> {
  factory _$$ELearningResponseImplCopyWith(_$ELearningResponseImpl value,
          $Res Function(_$ELearningResponseImpl) then) =
      __$$ELearningResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imageUrl,
      String? title,
      String? time,
      String? teacher,
      String? link});
}

/// @nodoc
class __$$ELearningResponseImplCopyWithImpl<$Res>
    extends _$ELearningResponseCopyWithImpl<$Res, _$ELearningResponseImpl>
    implements _$$ELearningResponseImplCopyWith<$Res> {
  __$$ELearningResponseImplCopyWithImpl(_$ELearningResponseImpl _value,
      $Res Function(_$ELearningResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? time = freezed,
    Object? teacher = freezed,
    Object? link = freezed,
  }) {
    return _then(_$ELearningResponseImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ELearningResponseImpl implements _ELearningResponse {
  const _$ELearningResponseImpl(
      {this.imageUrl, this.title, this.time, this.teacher, this.link});

  factory _$ELearningResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ELearningResponseImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? time;
  @override
  final String? teacher;
  @override
  final String? link;

  @override
  String toString() {
    return 'ELearningResponse(imageUrl: $imageUrl, title: $title, time: $time, teacher: $teacher, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ELearningResponseImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, title, time, teacher, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ELearningResponseImplCopyWith<_$ELearningResponseImpl> get copyWith =>
      __$$ELearningResponseImplCopyWithImpl<_$ELearningResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ELearningResponseImplToJson(
      this,
    );
  }
}

abstract class _ELearningResponse implements ELearningResponse {
  const factory _ELearningResponse(
      {final String? imageUrl,
      final String? title,
      final String? time,
      final String? teacher,
      final String? link}) = _$ELearningResponseImpl;

  factory _ELearningResponse.fromJson(Map<String, dynamic> json) =
      _$ELearningResponseImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  String? get time;
  @override
  String? get teacher;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$ELearningResponseImplCopyWith<_$ELearningResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
