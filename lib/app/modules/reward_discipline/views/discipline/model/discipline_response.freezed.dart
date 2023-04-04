// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discipline_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DisciplineResponse _$DisciplineResponseFromJson(Map<String, dynamic> json) {
  return _DisciplineResponse.fromJson(json);
}

/// @nodoc
mixin _$DisciplineResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get discipline => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisciplineResponseCopyWith<DisciplineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisciplineResponseCopyWith<$Res> {
  factory $DisciplineResponseCopyWith(
          DisciplineResponse value, $Res Function(DisciplineResponse) then) =
      _$DisciplineResponseCopyWithImpl<$Res, DisciplineResponse>;
  @useResult
  $Res call(
      {int? id,
      String? discipline,
      String? content,
      String? icon,
      int? status});
}

/// @nodoc
class _$DisciplineResponseCopyWithImpl<$Res, $Val extends DisciplineResponse>
    implements $DisciplineResponseCopyWith<$Res> {
  _$DisciplineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discipline = freezed,
    Object? content = freezed,
    Object? icon = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discipline: freezed == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DisciplineResponseCopyWith<$Res>
    implements $DisciplineResponseCopyWith<$Res> {
  factory _$$_DisciplineResponseCopyWith(_$_DisciplineResponse value,
          $Res Function(_$_DisciplineResponse) then) =
      __$$_DisciplineResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? discipline,
      String? content,
      String? icon,
      int? status});
}

/// @nodoc
class __$$_DisciplineResponseCopyWithImpl<$Res>
    extends _$DisciplineResponseCopyWithImpl<$Res, _$_DisciplineResponse>
    implements _$$_DisciplineResponseCopyWith<$Res> {
  __$$_DisciplineResponseCopyWithImpl(
      _$_DisciplineResponse _value, $Res Function(_$_DisciplineResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discipline = freezed,
    Object? content = freezed,
    Object? icon = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_DisciplineResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      discipline: freezed == discipline
          ? _value.discipline
          : discipline // ignore: cast_nullable_to_non_nullable
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
class _$_DisciplineResponse implements _DisciplineResponse {
  const _$_DisciplineResponse(
      {this.id, this.discipline, this.content, this.icon, this.status});

  factory _$_DisciplineResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DisciplineResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? discipline;
  @override
  final String? content;
  @override
  final String? icon;
  @override
  final int? status;

  @override
  String toString() {
    return 'DisciplineResponse(id: $id, discipline: $discipline, content: $content, icon: $icon, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisciplineResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discipline, discipline) ||
                other.discipline == discipline) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, discipline, content, icon, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisciplineResponseCopyWith<_$_DisciplineResponse> get copyWith =>
      __$$_DisciplineResponseCopyWithImpl<_$_DisciplineResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisciplineResponseToJson(
      this,
    );
  }
}

abstract class _DisciplineResponse implements DisciplineResponse {
  const factory _DisciplineResponse(
      {final int? id,
      final String? discipline,
      final String? content,
      final String? icon,
      final int? status}) = _$_DisciplineResponse;

  factory _DisciplineResponse.fromJson(Map<String, dynamic> json) =
      _$_DisciplineResponse.fromJson;

  @override
  int? get id;
  @override
  String? get discipline;
  @override
  String? get content;
  @override
  String? get icon;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_DisciplineResponseCopyWith<_$_DisciplineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
