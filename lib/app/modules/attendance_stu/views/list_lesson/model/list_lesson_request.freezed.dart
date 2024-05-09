// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_lesson_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListLessonRequest _$ListLessonRequestFromJson(Map<String, dynamic> json) {
  return _ListLessonRequest.fromJson(json);
}

/// @nodoc
mixin _$ListLessonRequest {
  @JsonKey(name: 'iD_lop_tc')
  int? get idLopTc => throw _privateConstructorUsedError;
  @JsonKey(name: 'hoc_ky')
  int? get hocKy => throw _privateConstructorUsedError;
  @JsonKey(name: 'nam_hoc')
  String? get namHoc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListLessonRequestCopyWith<ListLessonRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListLessonRequestCopyWith<$Res> {
  factory $ListLessonRequestCopyWith(
          ListLessonRequest value, $Res Function(ListLessonRequest) then) =
      _$ListLessonRequestCopyWithImpl<$Res, ListLessonRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iD_lop_tc') int? idLopTc,
      @JsonKey(name: 'hoc_ky') int? hocKy,
      @JsonKey(name: 'nam_hoc') String? namHoc});
}

/// @nodoc
class _$ListLessonRequestCopyWithImpl<$Res, $Val extends ListLessonRequest>
    implements $ListLessonRequestCopyWith<$Res> {
  _$ListLessonRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLopTc = freezed,
    Object? hocKy = freezed,
    Object? namHoc = freezed,
  }) {
    return _then(_value.copyWith(
      idLopTc: freezed == idLopTc
          ? _value.idLopTc
          : idLopTc // ignore: cast_nullable_to_non_nullable
              as int?,
      hocKy: freezed == hocKy
          ? _value.hocKy
          : hocKy // ignore: cast_nullable_to_non_nullable
              as int?,
      namHoc: freezed == namHoc
          ? _value.namHoc
          : namHoc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListLessonRequestImplCopyWith<$Res>
    implements $ListLessonRequestCopyWith<$Res> {
  factory _$$ListLessonRequestImplCopyWith(_$ListLessonRequestImpl value,
          $Res Function(_$ListLessonRequestImpl) then) =
      __$$ListLessonRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iD_lop_tc') int? idLopTc,
      @JsonKey(name: 'hoc_ky') int? hocKy,
      @JsonKey(name: 'nam_hoc') String? namHoc});
}

/// @nodoc
class __$$ListLessonRequestImplCopyWithImpl<$Res>
    extends _$ListLessonRequestCopyWithImpl<$Res, _$ListLessonRequestImpl>
    implements _$$ListLessonRequestImplCopyWith<$Res> {
  __$$ListLessonRequestImplCopyWithImpl(_$ListLessonRequestImpl _value,
      $Res Function(_$ListLessonRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLopTc = freezed,
    Object? hocKy = freezed,
    Object? namHoc = freezed,
  }) {
    return _then(_$ListLessonRequestImpl(
      idLopTc: freezed == idLopTc
          ? _value.idLopTc
          : idLopTc // ignore: cast_nullable_to_non_nullable
              as int?,
      hocKy: freezed == hocKy
          ? _value.hocKy
          : hocKy // ignore: cast_nullable_to_non_nullable
              as int?,
      namHoc: freezed == namHoc
          ? _value.namHoc
          : namHoc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListLessonRequestImpl implements _ListLessonRequest {
  _$ListLessonRequestImpl(
      {@JsonKey(name: 'iD_lop_tc') this.idLopTc,
      @JsonKey(name: 'hoc_ky') this.hocKy,
      @JsonKey(name: 'nam_hoc') this.namHoc});

  factory _$ListLessonRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListLessonRequestImplFromJson(json);

  @override
  @JsonKey(name: 'iD_lop_tc')
  final int? idLopTc;
  @override
  @JsonKey(name: 'hoc_ky')
  final int? hocKy;
  @override
  @JsonKey(name: 'nam_hoc')
  final String? namHoc;

  @override
  String toString() {
    return 'ListLessonRequest(idLopTc: $idLopTc, hocKy: $hocKy, namHoc: $namHoc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLessonRequestImpl &&
            (identical(other.idLopTc, idLopTc) || other.idLopTc == idLopTc) &&
            (identical(other.hocKy, hocKy) || other.hocKy == hocKy) &&
            (identical(other.namHoc, namHoc) || other.namHoc == namHoc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idLopTc, hocKy, namHoc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLessonRequestImplCopyWith<_$ListLessonRequestImpl> get copyWith =>
      __$$ListLessonRequestImplCopyWithImpl<_$ListLessonRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListLessonRequestImplToJson(
      this,
    );
  }
}

abstract class _ListLessonRequest implements ListLessonRequest {
  factory _ListLessonRequest(
          {@JsonKey(name: 'iD_lop_tc') final int? idLopTc,
          @JsonKey(name: 'hoc_ky') final int? hocKy,
          @JsonKey(name: 'nam_hoc') final String? namHoc}) =
      _$ListLessonRequestImpl;

  factory _ListLessonRequest.fromJson(Map<String, dynamic> json) =
      _$ListLessonRequestImpl.fromJson;

  @override
  @JsonKey(name: 'iD_lop_tc')
  int? get idLopTc;
  @override
  @JsonKey(name: 'hoc_ky')
  int? get hocKy;
  @override
  @JsonKey(name: 'nam_hoc')
  String? get namHoc;
  @override
  @JsonKey(ignore: true)
  _$$ListLessonRequestImplCopyWith<_$ListLessonRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
