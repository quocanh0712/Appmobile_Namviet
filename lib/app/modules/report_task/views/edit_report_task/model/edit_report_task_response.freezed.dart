// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_report_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditReportTaskResponse _$EditReportTaskResponseFromJson(
    Map<String, dynamic> json) {
  return _EditReportTaskResponse.fromJson(json);
}

/// @nodoc
mixin _$EditReportTaskResponse {
  List<FormFieldData>? get listForm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditReportTaskResponseCopyWith<EditReportTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditReportTaskResponseCopyWith<$Res> {
  factory $EditReportTaskResponseCopyWith(EditReportTaskResponse value,
          $Res Function(EditReportTaskResponse) then) =
      _$EditReportTaskResponseCopyWithImpl<$Res, EditReportTaskResponse>;
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class _$EditReportTaskResponseCopyWithImpl<$Res,
        $Val extends EditReportTaskResponse>
    implements $EditReportTaskResponseCopyWith<$Res> {
  _$EditReportTaskResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditReportTaskResponseCopyWith<$Res>
    implements $EditReportTaskResponseCopyWith<$Res> {
  factory _$$_EditReportTaskResponseCopyWith(_$_EditReportTaskResponse value,
          $Res Function(_$_EditReportTaskResponse) then) =
      __$$_EditReportTaskResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FormFieldData>? listForm});
}

/// @nodoc
class __$$_EditReportTaskResponseCopyWithImpl<$Res>
    extends _$EditReportTaskResponseCopyWithImpl<$Res,
        _$_EditReportTaskResponse>
    implements _$$_EditReportTaskResponseCopyWith<$Res> {
  __$$_EditReportTaskResponseCopyWithImpl(_$_EditReportTaskResponse _value,
      $Res Function(_$_EditReportTaskResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForm = freezed,
  }) {
    return _then(_$_EditReportTaskResponse(
      listForm: freezed == listForm
          ? _value._listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<FormFieldData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditReportTaskResponse implements _EditReportTaskResponse {
  const _$_EditReportTaskResponse({final List<FormFieldData>? listForm})
      : _listForm = listForm;

  factory _$_EditReportTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EditReportTaskResponseFromJson(json);

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
    return 'EditReportTaskResponse(listForm: $listForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditReportTaskResponse &&
            const DeepCollectionEquality().equals(other._listForm, _listForm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listForm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditReportTaskResponseCopyWith<_$_EditReportTaskResponse> get copyWith =>
      __$$_EditReportTaskResponseCopyWithImpl<_$_EditReportTaskResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditReportTaskResponseToJson(
      this,
    );
  }
}

abstract class _EditReportTaskResponse implements EditReportTaskResponse {
  const factory _EditReportTaskResponse({final List<FormFieldData>? listForm}) =
      _$_EditReportTaskResponse;

  factory _EditReportTaskResponse.fromJson(Map<String, dynamic> json) =
      _$_EditReportTaskResponse.fromJson;

  @override
  List<FormFieldData>? get listForm;
  @override
  @JsonKey(ignore: true)
  _$$_EditReportTaskResponseCopyWith<_$_EditReportTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
