// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentConversation _$CommentConversationFromJson(Map<String, dynamic> json) {
  return _CommentConversation.fromJson(json);
}

/// @nodoc
mixin _$CommentConversation {
  int? get id => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  String? get iDCb => throw _privateConstructorUsedError;
  String? get employeePosition => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentConversationCopyWith<CommentConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentConversationCopyWith<$Res> {
  factory $CommentConversationCopyWith(
          CommentConversation value, $Res Function(CommentConversation) then) =
      _$CommentConversationCopyWithImpl<$Res, CommentConversation>;
  @useResult
  $Res call(
      {int? id,
      String? content,
      String? teacher,
      String? iDCb,
      String? employeePosition,
      String? image,
      DateTime? updateAt});
}

/// @nodoc
class _$CommentConversationCopyWithImpl<$Res, $Val extends CommentConversation>
    implements $CommentConversationCopyWith<$Res> {
  _$CommentConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? teacher = freezed,
    Object? iDCb = freezed,
    Object? employeePosition = freezed,
    Object? image = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      iDCb: freezed == iDCb
          ? _value.iDCb
          : iDCb // ignore: cast_nullable_to_non_nullable
              as String?,
      employeePosition: freezed == employeePosition
          ? _value.employeePosition
          : employeePosition // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentConversationImplCopyWith<$Res>
    implements $CommentConversationCopyWith<$Res> {
  factory _$$CommentConversationImplCopyWith(_$CommentConversationImpl value,
          $Res Function(_$CommentConversationImpl) then) =
      __$$CommentConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? content,
      String? teacher,
      String? iDCb,
      String? employeePosition,
      String? image,
      DateTime? updateAt});
}

/// @nodoc
class __$$CommentConversationImplCopyWithImpl<$Res>
    extends _$CommentConversationCopyWithImpl<$Res, _$CommentConversationImpl>
    implements _$$CommentConversationImplCopyWith<$Res> {
  __$$CommentConversationImplCopyWithImpl(_$CommentConversationImpl _value,
      $Res Function(_$CommentConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? teacher = freezed,
    Object? iDCb = freezed,
    Object? employeePosition = freezed,
    Object? image = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$CommentConversationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      iDCb: freezed == iDCb
          ? _value.iDCb
          : iDCb // ignore: cast_nullable_to_non_nullable
              as String?,
      employeePosition: freezed == employeePosition
          ? _value.employeePosition
          : employeePosition // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentConversationImpl implements _CommentConversation {
  const _$CommentConversationImpl(
      {this.id,
      this.content,
      this.teacher,
      this.iDCb,
      this.employeePosition,
      this.image,
      this.updateAt});

  factory _$CommentConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentConversationImplFromJson(json);

  @override
  final int? id;
  @override
  final String? content;
  @override
  final String? teacher;
  @override
  final String? iDCb;
  @override
  final String? employeePosition;
  @override
  final String? image;
  @override
  final DateTime? updateAt;

  @override
  String toString() {
    return 'CommentConversation(id: $id, content: $content, teacher: $teacher, iDCb: $iDCb, employeePosition: $employeePosition, image: $image, updateAt: $updateAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentConversationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.iDCb, iDCb) || other.iDCb == iDCb) &&
            (identical(other.employeePosition, employeePosition) ||
                other.employeePosition == employeePosition) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, teacher, iDCb,
      employeePosition, image, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentConversationImplCopyWith<_$CommentConversationImpl> get copyWith =>
      __$$CommentConversationImplCopyWithImpl<_$CommentConversationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentConversationImplToJson(
      this,
    );
  }
}

abstract class _CommentConversation implements CommentConversation {
  const factory _CommentConversation(
      {final int? id,
      final String? content,
      final String? teacher,
      final String? iDCb,
      final String? employeePosition,
      final String? image,
      final DateTime? updateAt}) = _$CommentConversationImpl;

  factory _CommentConversation.fromJson(Map<String, dynamic> json) =
      _$CommentConversationImpl.fromJson;

  @override
  int? get id;
  @override
  String? get content;
  @override
  String? get teacher;
  @override
  String? get iDCb;
  @override
  String? get employeePosition;
  @override
  String? get image;
  @override
  DateTime? get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$CommentConversationImplCopyWith<_$CommentConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
