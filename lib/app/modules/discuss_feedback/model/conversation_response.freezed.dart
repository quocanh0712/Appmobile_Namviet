// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversationResponse _$ConversationResponseFromJson(Map<String, dynamic> json) {
  return _ConversationResponse.fromJson(json);
}

/// @nodoc
mixin _$ConversationResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get conversationname => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get typeId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get iDCb => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  DateTime? get updateAt => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationResponseCopyWith<ConversationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationResponseCopyWith<$Res> {
  factory $ConversationResponseCopyWith(ConversationResponse value,
          $Res Function(ConversationResponse) then) =
      _$ConversationResponseCopyWithImpl<$Res, ConversationResponse>;
  @useResult
  $Res call(
      {int? id,
      String? conversationname,
      String? content,
      int? typeId,
      String? type,
      String? iDCb,
      String? teacher,
      DateTime? updateAt,
      int? status});
}

/// @nodoc
class _$ConversationResponseCopyWithImpl<$Res,
        $Val extends ConversationResponse>
    implements $ConversationResponseCopyWith<$Res> {
  _$ConversationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationname = freezed,
    Object? content = freezed,
    Object? typeId = freezed,
    Object? type = freezed,
    Object? iDCb = freezed,
    Object? teacher = freezed,
    Object? updateAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      conversationname: freezed == conversationname
          ? _value.conversationname
          : conversationname // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      iDCb: freezed == iDCb
          ? _value.iDCb
          : iDCb // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversationResponseCopyWith<$Res>
    implements $ConversationResponseCopyWith<$Res> {
  factory _$$_ConversationResponseCopyWith(_$_ConversationResponse value,
          $Res Function(_$_ConversationResponse) then) =
      __$$_ConversationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? conversationname,
      String? content,
      int? typeId,
      String? type,
      String? iDCb,
      String? teacher,
      DateTime? updateAt,
      int? status});
}

/// @nodoc
class __$$_ConversationResponseCopyWithImpl<$Res>
    extends _$ConversationResponseCopyWithImpl<$Res, _$_ConversationResponse>
    implements _$$_ConversationResponseCopyWith<$Res> {
  __$$_ConversationResponseCopyWithImpl(_$_ConversationResponse _value,
      $Res Function(_$_ConversationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationname = freezed,
    Object? content = freezed,
    Object? typeId = freezed,
    Object? type = freezed,
    Object? iDCb = freezed,
    Object? teacher = freezed,
    Object? updateAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ConversationResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      conversationname: freezed == conversationname
          ? _value.conversationname
          : conversationname // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      iDCb: freezed == iDCb
          ? _value.iDCb
          : iDCb // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversationResponse implements _ConversationResponse {
  const _$_ConversationResponse(
      {this.id,
      this.conversationname,
      this.content,
      this.typeId,
      this.type,
      this.iDCb,
      this.teacher,
      this.updateAt,
      this.status});

  factory _$_ConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? conversationname;
  @override
  final String? content;
  @override
  final int? typeId;
  @override
  final String? type;
  @override
  final String? iDCb;
  @override
  final String? teacher;
  @override
  final DateTime? updateAt;
  @override
  final int? status;

  @override
  String toString() {
    return 'ConversationResponse(id: $id, conversationname: $conversationname, content: $content, typeId: $typeId, type: $type, iDCb: $iDCb, teacher: $teacher, updateAt: $updateAt, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationname, conversationname) ||
                other.conversationname == conversationname) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iDCb, iDCb) || other.iDCb == iDCb) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, conversationname, content,
      typeId, type, iDCb, teacher, updateAt, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationResponseCopyWith<_$_ConversationResponse> get copyWith =>
      __$$_ConversationResponseCopyWithImpl<_$_ConversationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationResponseToJson(
      this,
    );
  }
}

abstract class _ConversationResponse implements ConversationResponse {
  const factory _ConversationResponse(
      {final int? id,
      final String? conversationname,
      final String? content,
      final int? typeId,
      final String? type,
      final String? iDCb,
      final String? teacher,
      final DateTime? updateAt,
      final int? status}) = _$_ConversationResponse;

  factory _ConversationResponse.fromJson(Map<String, dynamic> json) =
      _$_ConversationResponse.fromJson;

  @override
  int? get id;
  @override
  String? get conversationname;
  @override
  String? get content;
  @override
  int? get typeId;
  @override
  String? get type;
  @override
  String? get iDCb;
  @override
  String? get teacher;
  @override
  DateTime? get updateAt;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationResponseCopyWith<_$_ConversationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
