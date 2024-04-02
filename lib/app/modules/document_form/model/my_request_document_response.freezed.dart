// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_request_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyRequestDocumentResponse _$MyRequestDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _MyRequestDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$MyRequestDocumentResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get idForm => throw _privateConstructorUsedError;
  String? get formname => throw _privateConstructorUsedError;
  DateTime? get updateTime => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  List<ValueModel>? get listForm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyRequestDocumentResponseCopyWith<MyRequestDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRequestDocumentResponseCopyWith<$Res> {
  factory $MyRequestDocumentResponseCopyWith(MyRequestDocumentResponse value,
          $Res Function(MyRequestDocumentResponse) then) =
      _$MyRequestDocumentResponseCopyWithImpl<$Res, MyRequestDocumentResponse>;
  @useResult
  $Res call(
      {String? id,
      String? idForm,
      String? formname,
      DateTime? updateTime,
      int? status,
      List<ValueModel>? listForm});
}

/// @nodoc
class _$MyRequestDocumentResponseCopyWithImpl<$Res,
        $Val extends MyRequestDocumentResponse>
    implements $MyRequestDocumentResponseCopyWith<$Res> {
  _$MyRequestDocumentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idForm = freezed,
    Object? formname = freezed,
    Object? updateTime = freezed,
    Object? status = freezed,
    Object? listForm = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idForm: freezed == idForm
          ? _value.idForm
          : idForm // ignore: cast_nullable_to_non_nullable
              as String?,
      formname: freezed == formname
          ? _value.formname
          : formname // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      listForm: freezed == listForm
          ? _value.listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<ValueModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyRequestDocumentResponseImplCopyWith<$Res>
    implements $MyRequestDocumentResponseCopyWith<$Res> {
  factory _$$MyRequestDocumentResponseImplCopyWith(
          _$MyRequestDocumentResponseImpl value,
          $Res Function(_$MyRequestDocumentResponseImpl) then) =
      __$$MyRequestDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? idForm,
      String? formname,
      DateTime? updateTime,
      int? status,
      List<ValueModel>? listForm});
}

/// @nodoc
class __$$MyRequestDocumentResponseImplCopyWithImpl<$Res>
    extends _$MyRequestDocumentResponseCopyWithImpl<$Res,
        _$MyRequestDocumentResponseImpl>
    implements _$$MyRequestDocumentResponseImplCopyWith<$Res> {
  __$$MyRequestDocumentResponseImplCopyWithImpl(
      _$MyRequestDocumentResponseImpl _value,
      $Res Function(_$MyRequestDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idForm = freezed,
    Object? formname = freezed,
    Object? updateTime = freezed,
    Object? status = freezed,
    Object? listForm = freezed,
  }) {
    return _then(_$MyRequestDocumentResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idForm: freezed == idForm
          ? _value.idForm
          : idForm // ignore: cast_nullable_to_non_nullable
              as String?,
      formname: freezed == formname
          ? _value.formname
          : formname // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      listForm: freezed == listForm
          ? _value._listForm
          : listForm // ignore: cast_nullable_to_non_nullable
              as List<ValueModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyRequestDocumentResponseImpl implements _MyRequestDocumentResponse {
  const _$MyRequestDocumentResponseImpl(
      {this.id,
      this.idForm,
      this.formname,
      this.updateTime,
      this.status,
      final List<ValueModel>? listForm})
      : _listForm = listForm;

  factory _$MyRequestDocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyRequestDocumentResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? idForm;
  @override
  final String? formname;
  @override
  final DateTime? updateTime;
  @override
  final int? status;
  final List<ValueModel>? _listForm;
  @override
  List<ValueModel>? get listForm {
    final value = _listForm;
    if (value == null) return null;
    if (_listForm is EqualUnmodifiableListView) return _listForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyRequestDocumentResponse(id: $id, idForm: $idForm, formname: $formname, updateTime: $updateTime, status: $status, listForm: $listForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRequestDocumentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idForm, idForm) || other.idForm == idForm) &&
            (identical(other.formname, formname) ||
                other.formname == formname) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._listForm, _listForm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idForm, formname, updateTime,
      status, const DeepCollectionEquality().hash(_listForm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyRequestDocumentResponseImplCopyWith<_$MyRequestDocumentResponseImpl>
      get copyWith => __$$MyRequestDocumentResponseImplCopyWithImpl<
          _$MyRequestDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyRequestDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _MyRequestDocumentResponse implements MyRequestDocumentResponse {
  const factory _MyRequestDocumentResponse(
      {final String? id,
      final String? idForm,
      final String? formname,
      final DateTime? updateTime,
      final int? status,
      final List<ValueModel>? listForm}) = _$MyRequestDocumentResponseImpl;

  factory _MyRequestDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$MyRequestDocumentResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get idForm;
  @override
  String? get formname;
  @override
  DateTime? get updateTime;
  @override
  int? get status;
  @override
  List<ValueModel>? get listForm;
  @override
  @JsonKey(ignore: true)
  _$$MyRequestDocumentResponseImplCopyWith<_$MyRequestDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
