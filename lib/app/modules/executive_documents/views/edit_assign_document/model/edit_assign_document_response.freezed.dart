// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_assign_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditAssignDocumentResponse _$EditAssignDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _EditAssignDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$EditAssignDocumentResponse {
  List<FormFieldData>? get listForm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditAssignDocumentResponseCopyWith<EditAssignDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAssignDocumentResponseCopyWith<$Res> {
  factory $EditAssignDocumentResponseCopyWith(EditAssignDocumentResponse value,
          $Res Function(EditAssignDocumentResponse) then) =
      _$EditAssignDocumentResponseCopyWithImpl<$Res,
          EditAssignDocumentResponse>;
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class _$EditAssignDocumentResponseCopyWithImpl<$Res,
        $Val extends EditAssignDocumentResponse>
    implements $EditAssignDocumentResponseCopyWith<$Res> {
  _$EditAssignDocumentResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditAssignDocumentResponseCopyWith<$Res>
    implements $EditAssignDocumentResponseCopyWith<$Res> {
  factory _$$_EditAssignDocumentResponseCopyWith(
          _$_EditAssignDocumentResponse value,
          $Res Function(_$_EditAssignDocumentResponse) then) =
      __$$_EditAssignDocumentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class __$$_EditAssignDocumentResponseCopyWithImpl<$Res>
    extends _$EditAssignDocumentResponseCopyWithImpl<$Res,
        _$_EditAssignDocumentResponse>
    implements _$$_EditAssignDocumentResponseCopyWith<$Res> {
  __$$_EditAssignDocumentResponseCopyWithImpl(
      _$_EditAssignDocumentResponse _value,
      $Res Function(_$_EditAssignDocumentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForm = freezed,
  }) {
    return _then(_$_EditAssignDocumentResponse(
      listForm: freezed == listForm
          ? _value._listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<FormFieldData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditAssignDocumentResponse implements _EditAssignDocumentResponse {
  const _$_EditAssignDocumentResponse({final List<FormFieldData>? listForm})
      : _listForm = listForm;

  factory _$_EditAssignDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EditAssignDocumentResponseFromJson(json);

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
    return 'EditAssignDocumentResponse(listForm: $listForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditAssignDocumentResponse &&
            const DeepCollectionEquality().equals(other._listForm, _listForm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listForm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditAssignDocumentResponseCopyWith<_$_EditAssignDocumentResponse>
      get copyWith => __$$_EditAssignDocumentResponseCopyWithImpl<
          _$_EditAssignDocumentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditAssignDocumentResponseToJson(
      this,
    );
  }
}

abstract class _EditAssignDocumentResponse
    implements EditAssignDocumentResponse {
  const factory _EditAssignDocumentResponse(
      {final List<FormFieldData>? listForm}) = _$_EditAssignDocumentResponse;

  factory _EditAssignDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_EditAssignDocumentResponse.fromJson;

  @override
  List<FormFieldData>? get listForm;
  @override
  @JsonKey(ignore: true)
  _$$_EditAssignDocumentResponseCopyWith<_$_EditAssignDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
