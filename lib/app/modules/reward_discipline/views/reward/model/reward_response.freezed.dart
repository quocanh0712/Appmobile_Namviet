// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardResponse _$RewardResponseFromJson(Map<String, dynamic> json) {
  return _RewardResponse.fromJson(json);
}

/// @nodoc
mixin _$RewardResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get achievement => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardResponseCopyWith<RewardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardResponseCopyWith<$Res> {
  factory $RewardResponseCopyWith(
          RewardResponse value, $Res Function(RewardResponse) then) =
      _$RewardResponseCopyWithImpl<$Res, RewardResponse>;
  @useResult
  $Res call(
      {int? id,
      String? achievement,
      String? content,
      String? icon,
      int? status});
}

/// @nodoc
class _$RewardResponseCopyWithImpl<$Res, $Val extends RewardResponse>
    implements $RewardResponseCopyWith<$Res> {
  _$RewardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? achievement = freezed,
    Object? content = freezed,
    Object? icon = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      achievement: freezed == achievement
          ? _value.achievement
          : achievement // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardResponseCopyWith<$Res>
    implements $RewardResponseCopyWith<$Res> {
  factory _$$_RewardResponseCopyWith(
          _$_RewardResponse value, $Res Function(_$_RewardResponse) then) =
      __$$_RewardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? achievement,
      String? content,
      String? icon,
      int? status});
}

/// @nodoc
class __$$_RewardResponseCopyWithImpl<$Res>
    extends _$RewardResponseCopyWithImpl<$Res, _$_RewardResponse>
    implements _$$_RewardResponseCopyWith<$Res> {
  __$$_RewardResponseCopyWithImpl(
      _$_RewardResponse _value, $Res Function(_$_RewardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? achievement = freezed,
    Object? content = freezed,
    Object? icon = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_RewardResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      achievement: freezed == achievement
          ? _value.achievement
          : achievement // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardResponse implements _RewardResponse {
  const _$_RewardResponse(
      {this.id, this.achievement, this.content, this.icon, this.status});

  factory _$_RewardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RewardResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? achievement;
  @override
  final String? content;
  @override
  final String? icon;
  @override
  final int? status;

  @override
  String toString() {
    return 'RewardResponse(id: $id, achievement: $achievement, content: $content, icon: $icon, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.achievement, achievement) ||
                other.achievement == achievement) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, achievement, content, icon, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardResponseCopyWith<_$_RewardResponse> get copyWith =>
      __$$_RewardResponseCopyWithImpl<_$_RewardResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardResponseToJson(
      this,
    );
  }
}

abstract class _RewardResponse implements RewardResponse {
  const factory _RewardResponse(
      {final int? id,
      final String? achievement,
      final String? content,
      final String? icon,
      final int? status}) = _$_RewardResponse;

  factory _RewardResponse.fromJson(Map<String, dynamic> json) =
      _$_RewardResponse.fromJson;

  @override
  int? get id;
  @override
  String? get achievement;
  @override
  String? get content;
  @override
  String? get icon;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_RewardResponseCopyWith<_$_RewardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
