// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_request_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceRequestObject _$ServiceRequestObjectFromJson(Map<String, dynamic> json) {
  return _ServiceRequestObject.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequestObject {
  String? get id => throw _privateConstructorUsedError;
  String? get idForm => throw _privateConstructorUsedError;
  String? get formname => throw _privateConstructorUsedError;
  DateTime? get updateTime => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  List<FormFieldData>? get listForm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceRequestObjectCopyWith<ServiceRequestObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestObjectCopyWith<$Res> {
  factory $ServiceRequestObjectCopyWith(ServiceRequestObject value,
          $Res Function(ServiceRequestObject) then) =
      _$ServiceRequestObjectCopyWithImpl<$Res, ServiceRequestObject>;
  @useResult
  $Res call(
      {String? id,
      String? idForm,
      String? formname,
      DateTime? updateTime,
      int? status,
      List<FormFieldData>? listForm});
}

/// @nodoc
class _$ServiceRequestObjectCopyWithImpl<$Res,
        $Val extends ServiceRequestObject>
    implements $ServiceRequestObjectCopyWith<$Res> {
  _$ServiceRequestObjectCopyWithImpl(this._value, this._then);

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
              as List<FormFieldData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceRequestObjectCopyWith<$Res>
    implements $ServiceRequestObjectCopyWith<$Res> {
  factory _$$_ServiceRequestObjectCopyWith(_$_ServiceRequestObject value,
          $Res Function(_$_ServiceRequestObject) then) =
      __$$_ServiceRequestObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? idForm,
      String? formname,
      DateTime? updateTime,
      int? status,
      List<FormFieldData>? listForm});
}

/// @nodoc
class __$$_ServiceRequestObjectCopyWithImpl<$Res>
    extends _$ServiceRequestObjectCopyWithImpl<$Res, _$_ServiceRequestObject>
    implements _$$_ServiceRequestObjectCopyWith<$Res> {
  __$$_ServiceRequestObjectCopyWithImpl(_$_ServiceRequestObject _value,
      $Res Function(_$_ServiceRequestObject) _then)
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
    return _then(_$_ServiceRequestObject(
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
              as List<FormFieldData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceRequestObject implements _ServiceRequestObject {
  _$_ServiceRequestObject(
      {this.id,
      this.idForm,
      this.formname,
      this.updateTime,
      this.status,
      final List<FormFieldData>? listForm})
      : _listForm = listForm;

  factory _$_ServiceRequestObject.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceRequestObjectFromJson(json);

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
    return 'ServiceRequestObject(id: $id, idForm: $idForm, formname: $formname, updateTime: $updateTime, status: $status, listForm: $listForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceRequestObject &&
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
  _$$_ServiceRequestObjectCopyWith<_$_ServiceRequestObject> get copyWith =>
      __$$_ServiceRequestObjectCopyWithImpl<_$_ServiceRequestObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceRequestObjectToJson(
      this,
    );
  }
}

abstract class _ServiceRequestObject implements ServiceRequestObject {
  factory _ServiceRequestObject(
      {final String? id,
      final String? idForm,
      final String? formname,
      final DateTime? updateTime,
      final int? status,
      final List<FormFieldData>? listForm}) = _$_ServiceRequestObject;

  factory _ServiceRequestObject.fromJson(Map<String, dynamic> json) =
      _$_ServiceRequestObject.fromJson;

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
  List<FormFieldData>? get listForm;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceRequestObjectCopyWith<_$_ServiceRequestObject> get copyWith =>
      throw _privateConstructorUsedError;
}
