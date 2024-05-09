// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_stu_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceStuRequest _$AttendanceStuRequestFromJson(Map<String, dynamic> json) {
  return _AttendanceStuRequest.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStuRequest {
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'hoc_ky')
  int? get hocKy => throw _privateConstructorUsedError;
  @JsonKey(name: 'nam_hoc')
  String? get namHoc => throw _privateConstructorUsedError;
  @JsonKey(name: 'iD_cb')
  String? get idUser => throw _privateConstructorUsedError;
  int? get userGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceStuRequestCopyWith<AttendanceStuRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStuRequestCopyWith<$Res> {
  factory $AttendanceStuRequestCopyWith(AttendanceStuRequest value,
          $Res Function(AttendanceStuRequest) then) =
      _$AttendanceStuRequestCopyWithImpl<$Res, AttendanceStuRequest>;
  @useResult
  $Res call(
      {int? startindex,
      int? length,
      @JsonKey(name: 'hoc_ky') int? hocKy,
      @JsonKey(name: 'nam_hoc') String? namHoc,
      @JsonKey(name: 'iD_cb') String? idUser,
      int? userGroup});
}

/// @nodoc
class _$AttendanceStuRequestCopyWithImpl<$Res,
        $Val extends AttendanceStuRequest>
    implements $AttendanceStuRequestCopyWith<$Res> {
  _$AttendanceStuRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? hocKy = freezed,
    Object? namHoc = freezed,
    Object? idUser = freezed,
    Object? userGroup = freezed,
  }) {
    return _then(_value.copyWith(
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      hocKy: freezed == hocKy
          ? _value.hocKy
          : hocKy // ignore: cast_nullable_to_non_nullable
              as int?,
      namHoc: freezed == namHoc
          ? _value.namHoc
          : namHoc // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      userGroup: freezed == userGroup
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceStuRequestImplCopyWith<$Res>
    implements $AttendanceStuRequestCopyWith<$Res> {
  factory _$$AttendanceStuRequestImplCopyWith(_$AttendanceStuRequestImpl value,
          $Res Function(_$AttendanceStuRequestImpl) then) =
      __$$AttendanceStuRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? startindex,
      int? length,
      @JsonKey(name: 'hoc_ky') int? hocKy,
      @JsonKey(name: 'nam_hoc') String? namHoc,
      @JsonKey(name: 'iD_cb') String? idUser,
      int? userGroup});
}

/// @nodoc
class __$$AttendanceStuRequestImplCopyWithImpl<$Res>
    extends _$AttendanceStuRequestCopyWithImpl<$Res, _$AttendanceStuRequestImpl>
    implements _$$AttendanceStuRequestImplCopyWith<$Res> {
  __$$AttendanceStuRequestImplCopyWithImpl(_$AttendanceStuRequestImpl _value,
      $Res Function(_$AttendanceStuRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startindex = freezed,
    Object? length = freezed,
    Object? hocKy = freezed,
    Object? namHoc = freezed,
    Object? idUser = freezed,
    Object? userGroup = freezed,
  }) {
    return _then(_$AttendanceStuRequestImpl(
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      hocKy: freezed == hocKy
          ? _value.hocKy
          : hocKy // ignore: cast_nullable_to_non_nullable
              as int?,
      namHoc: freezed == namHoc
          ? _value.namHoc
          : namHoc // ignore: cast_nullable_to_non_nullable
              as String?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      userGroup: freezed == userGroup
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceStuRequestImpl implements _AttendanceStuRequest {
  _$AttendanceStuRequestImpl(
      {this.startindex,
      this.length,
      @JsonKey(name: 'hoc_ky') this.hocKy,
      @JsonKey(name: 'nam_hoc') this.namHoc,
      @JsonKey(name: 'iD_cb') this.idUser,
      this.userGroup});

  factory _$AttendanceStuRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceStuRequestImplFromJson(json);

  @override
  final int? startindex;
  @override
  final int? length;
  @override
  @JsonKey(name: 'hoc_ky')
  final int? hocKy;
  @override
  @JsonKey(name: 'nam_hoc')
  final String? namHoc;
  @override
  @JsonKey(name: 'iD_cb')
  final String? idUser;
  @override
  final int? userGroup;

  @override
  String toString() {
    return 'AttendanceStuRequest(startindex: $startindex, length: $length, hocKy: $hocKy, namHoc: $namHoc, idUser: $idUser, userGroup: $userGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStuRequestImpl &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.hocKy, hocKy) || other.hocKy == hocKy) &&
            (identical(other.namHoc, namHoc) || other.namHoc == namHoc) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.userGroup, userGroup) ||
                other.userGroup == userGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, startindex, length, hocKy, namHoc, idUser, userGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStuRequestImplCopyWith<_$AttendanceStuRequestImpl>
      get copyWith =>
          __$$AttendanceStuRequestImplCopyWithImpl<_$AttendanceStuRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceStuRequestImplToJson(
      this,
    );
  }
}

abstract class _AttendanceStuRequest implements AttendanceStuRequest {
  factory _AttendanceStuRequest(
      {final int? startindex,
      final int? length,
      @JsonKey(name: 'hoc_ky') final int? hocKy,
      @JsonKey(name: 'nam_hoc') final String? namHoc,
      @JsonKey(name: 'iD_cb') final String? idUser,
      final int? userGroup}) = _$AttendanceStuRequestImpl;

  factory _AttendanceStuRequest.fromJson(Map<String, dynamic> json) =
      _$AttendanceStuRequestImpl.fromJson;

  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(name: 'hoc_ky')
  int? get hocKy;
  @override
  @JsonKey(name: 'nam_hoc')
  String? get namHoc;
  @override
  @JsonKey(name: 'iD_cb')
  String? get idUser;
  @override
  int? get userGroup;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceStuRequestImplCopyWith<_$AttendanceStuRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
