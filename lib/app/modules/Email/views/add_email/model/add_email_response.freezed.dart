// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddEmailResponse _$AddEmailResponseFromJson(Map<String, dynamic> json) {
  return _AddEmailResponse.fromJson(json);
}

/// @nodoc
mixin _$AddEmailResponse {
  List<FormFieldData>? get listForm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddEmailResponseCopyWith<AddEmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEmailResponseCopyWith<$Res> {
  factory $AddEmailResponseCopyWith(
          AddEmailResponse value, $Res Function(AddEmailResponse) then) =
      _$AddEmailResponseCopyWithImpl<$Res, AddEmailResponse>;
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class _$AddEmailResponseCopyWithImpl<$Res, $Val extends AddEmailResponse>
    implements $AddEmailResponseCopyWith<$Res> {
  _$AddEmailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForm = freezed,
  }) {
    return _then(_value.copyWith(
      listForm: freezed == listForm
          ? _value.listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<FormFieldData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddEmailResponseCopyWith<$Res>
    implements $AddEmailResponseCopyWith<$Res> {
  factory _$$_AddEmailResponseCopyWith(
          _$_AddEmailResponse value, $Res Function(_$_AddEmailResponse) then) =
      __$$_AddEmailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class __$$_AddEmailResponseCopyWithImpl<$Res>
    extends _$AddEmailResponseCopyWithImpl<$Res, _$_AddEmailResponse>
    implements _$$_AddEmailResponseCopyWith<$Res> {
  __$$_AddEmailResponseCopyWithImpl(
      _$_AddEmailResponse _value, $Res Function(_$_AddEmailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForm = freezed,
  }) {
    return _then(_$_AddEmailResponse(
      listForm: freezed == listForm
          ? _value._listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<FormFieldData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddEmailResponse implements _AddEmailResponse {
  const _$_AddEmailResponse({final List<FormFieldData>? listForm})
      : _listForm = listForm;

  factory _$_AddEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddEmailResponseFromJson(json);

  final List<FormFieldData>? _listForm;
  @override
  List<FormFieldData>? get listForm {
    final value = _listForm;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddEmailResponse(listForm: $listForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEmailResponse &&
            const DeepCollectionEquality().equals(other._listForm, _listForm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listForm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddEmailResponseCopyWith<_$_AddEmailResponse> get copyWith =>
      __$$_AddEmailResponseCopyWithImpl<_$_AddEmailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddEmailResponseToJson(
      this,
    );
  }
}

abstract class _AddEmailResponse implements AddEmailResponse {
  const factory _AddEmailResponse({final List<FormFieldData>? listForm}) =
      _$_AddEmailResponse;

  factory _AddEmailResponse.fromJson(Map<String, dynamic> json) =
      _$_AddEmailResponse.fromJson;

  @override
  List<FormFieldData>? get listForm;
  @override
  @JsonKey(ignore: true)
  _$$_AddEmailResponseCopyWith<_$_AddEmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
