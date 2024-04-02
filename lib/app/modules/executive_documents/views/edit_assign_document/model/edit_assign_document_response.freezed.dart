// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_assign_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$EditAssignDocumentResponseImplCopyWith<$Res>
    implements $EditAssignDocumentResponseCopyWith<$Res> {
  factory _$$EditAssignDocumentResponseImplCopyWith(
          _$EditAssignDocumentResponseImpl value,
          $Res Function(_$EditAssignDocumentResponseImpl) then) =
      __$$EditAssignDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class __$$EditAssignDocumentResponseImplCopyWithImpl<$Res>
    extends _$EditAssignDocumentResponseCopyWithImpl<$Res,
        _$EditAssignDocumentResponseImpl>
    implements _$$EditAssignDocumentResponseImplCopyWith<$Res> {
  __$$EditAssignDocumentResponseImplCopyWithImpl(
      _$EditAssignDocumentResponseImpl _value,
      $Res Function(_$EditAssignDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForm = freezed,
  }) {
    return _then(_$EditAssignDocumentResponseImpl(
      listForm: freezed == listForm
          ? _value._listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<FormFieldData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditAssignDocumentResponseImpl implements _EditAssignDocumentResponse {
  const _$EditAssignDocumentResponseImpl({final List<FormFieldData>? listForm})
      : _listForm = listForm;

  factory _$EditAssignDocumentResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EditAssignDocumentResponseImplFromJson(json);

  final List<FormFieldData>? _listForm;
  @override
  List<FormFieldData>? get listForm {
    final value = _listForm;
    if (value == null) return null;
    if (_listForm is EqualUnmodifiableListView) return _listForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EditAssignDocumentResponse(listForm: $listForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAssignDocumentResponseImpl &&
            const DeepCollectionEquality().equals(other._listForm, _listForm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listForm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAssignDocumentResponseImplCopyWith<_$EditAssignDocumentResponseImpl>
      get copyWith => __$$EditAssignDocumentResponseImplCopyWithImpl<
          _$EditAssignDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditAssignDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _EditAssignDocumentResponse
    implements EditAssignDocumentResponse {
  const factory _EditAssignDocumentResponse(
      {final List<FormFieldData>? listForm}) = _$EditAssignDocumentResponseImpl;

  factory _EditAssignDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$EditAssignDocumentResponseImpl.fromJson;

  @override
  List<FormFieldData>? get listForm;
  @override
  @JsonKey(ignore: true)
  _$$EditAssignDocumentResponseImplCopyWith<_$EditAssignDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
