// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_student_attendance_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListStudentAttendanceRequest _$ListStudentAttendanceRequestFromJson(
    Map<String, dynamic> json) {
  return _ListStudentAttendanceRequest.fromJson(json);
}

/// @nodoc
mixin _$ListStudentAttendanceRequest {
  @JsonKey(name: 'iD_lop_tc')
  int? get idLopTc => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_chi_tiet')
  int? get idChiTiet => throw _privateConstructorUsedError;
  @JsonKey(name: 'tuan_thu')
  int? get tuanThu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListStudentAttendanceRequestCopyWith<ListStudentAttendanceRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStudentAttendanceRequestCopyWith<$Res> {
  factory $ListStudentAttendanceRequestCopyWith(
          ListStudentAttendanceRequest value,
          $Res Function(ListStudentAttendanceRequest) then) =
      _$ListStudentAttendanceRequestCopyWithImpl<$Res,
          ListStudentAttendanceRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iD_lop_tc') int? idLopTc,
      @JsonKey(name: 'id_chi_tiet') int? idChiTiet,
      @JsonKey(name: 'tuan_thu') int? tuanThu});
}

/// @nodoc
class _$ListStudentAttendanceRequestCopyWithImpl<$Res,
        $Val extends ListStudentAttendanceRequest>
    implements $ListStudentAttendanceRequestCopyWith<$Res> {
  _$ListStudentAttendanceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLopTc = freezed,
    Object? idChiTiet = freezed,
    Object? tuanThu = freezed,
  }) {
    return _then(_value.copyWith(
      idLopTc: freezed == idLopTc
          ? _value.idLopTc
          : idLopTc // ignore: cast_nullable_to_non_nullable
              as int?,
      idChiTiet: freezed == idChiTiet
          ? _value.idChiTiet
          : idChiTiet // ignore: cast_nullable_to_non_nullable
              as int?,
      tuanThu: freezed == tuanThu
          ? _value.tuanThu
          : tuanThu // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStudentAttendanceRequestImplCopyWith<$Res>
    implements $ListStudentAttendanceRequestCopyWith<$Res> {
  factory _$$ListStudentAttendanceRequestImplCopyWith(
          _$ListStudentAttendanceRequestImpl value,
          $Res Function(_$ListStudentAttendanceRequestImpl) then) =
      __$$ListStudentAttendanceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iD_lop_tc') int? idLopTc,
      @JsonKey(name: 'id_chi_tiet') int? idChiTiet,
      @JsonKey(name: 'tuan_thu') int? tuanThu});
}

/// @nodoc
class __$$ListStudentAttendanceRequestImplCopyWithImpl<$Res>
    extends _$ListStudentAttendanceRequestCopyWithImpl<$Res,
        _$ListStudentAttendanceRequestImpl>
    implements _$$ListStudentAttendanceRequestImplCopyWith<$Res> {
  __$$ListStudentAttendanceRequestImplCopyWithImpl(
      _$ListStudentAttendanceRequestImpl _value,
      $Res Function(_$ListStudentAttendanceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLopTc = freezed,
    Object? idChiTiet = freezed,
    Object? tuanThu = freezed,
  }) {
    return _then(_$ListStudentAttendanceRequestImpl(
      idLopTc: freezed == idLopTc
          ? _value.idLopTc
          : idLopTc // ignore: cast_nullable_to_non_nullable
              as int?,
      idChiTiet: freezed == idChiTiet
          ? _value.idChiTiet
          : idChiTiet // ignore: cast_nullable_to_non_nullable
              as int?,
      tuanThu: freezed == tuanThu
          ? _value.tuanThu
          : tuanThu // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListStudentAttendanceRequestImpl
    implements _ListStudentAttendanceRequest {
  _$ListStudentAttendanceRequestImpl(
      {@JsonKey(name: 'iD_lop_tc') this.idLopTc,
      @JsonKey(name: 'id_chi_tiet') this.idChiTiet,
      @JsonKey(name: 'tuan_thu') this.tuanThu});

  factory _$ListStudentAttendanceRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ListStudentAttendanceRequestImplFromJson(json);

  @override
  @JsonKey(name: 'iD_lop_tc')
  final int? idLopTc;
  @override
  @JsonKey(name: 'id_chi_tiet')
  final int? idChiTiet;
  @override
  @JsonKey(name: 'tuan_thu')
  final int? tuanThu;

  @override
  String toString() {
    return 'ListStudentAttendanceRequest(idLopTc: $idLopTc, idChiTiet: $idChiTiet, tuanThu: $tuanThu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStudentAttendanceRequestImpl &&
            (identical(other.idLopTc, idLopTc) || other.idLopTc == idLopTc) &&
            (identical(other.idChiTiet, idChiTiet) ||
                other.idChiTiet == idChiTiet) &&
            (identical(other.tuanThu, tuanThu) || other.tuanThu == tuanThu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idLopTc, idChiTiet, tuanThu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStudentAttendanceRequestImplCopyWith<
          _$ListStudentAttendanceRequestImpl>
      get copyWith => __$$ListStudentAttendanceRequestImplCopyWithImpl<
          _$ListStudentAttendanceRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListStudentAttendanceRequestImplToJson(
      this,
    );
  }
}

abstract class _ListStudentAttendanceRequest
    implements ListStudentAttendanceRequest {
  factory _ListStudentAttendanceRequest(
          {@JsonKey(name: 'iD_lop_tc') final int? idLopTc,
          @JsonKey(name: 'id_chi_tiet') final int? idChiTiet,
          @JsonKey(name: 'tuan_thu') final int? tuanThu}) =
      _$ListStudentAttendanceRequestImpl;

  factory _ListStudentAttendanceRequest.fromJson(Map<String, dynamic> json) =
      _$ListStudentAttendanceRequestImpl.fromJson;

  @override
  @JsonKey(name: 'iD_lop_tc')
  int? get idLopTc;
  @override
  @JsonKey(name: 'id_chi_tiet')
  int? get idChiTiet;
  @override
  @JsonKey(name: 'tuan_thu')
  int? get tuanThu;
  @override
  @JsonKey(ignore: true)
  _$$ListStudentAttendanceRequestImplCopyWith<
          _$ListStudentAttendanceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
