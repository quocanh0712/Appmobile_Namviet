// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'certificate_insert_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificateInsertRequest _$CertificateInsertRequestFromJson(
    Map<String, dynamic> json) {
  return _CertificateInsertRequest.fromJson(json);
}

/// @nodoc
mixin _$CertificateInsertRequest {
  String? get certificateName => throw _privateConstructorUsedError;
  int? get graduationYear => throw _privateConstructorUsedError;
  String? get degree => throw _privateConstructorUsedError;
  String? get academicRank => throw _privateConstructorUsedError;
  String? get studyPlace => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateInsertRequestCopyWith<CertificateInsertRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateInsertRequestCopyWith<$Res> {
  factory $CertificateInsertRequestCopyWith(CertificateInsertRequest value,
          $Res Function(CertificateInsertRequest) then) =
      _$CertificateInsertRequestCopyWithImpl<$Res, CertificateInsertRequest>;
  @useResult
  $Res call(
      {String? certificateName,
      int? graduationYear,
      String? degree,
      String? academicRank,
      String? studyPlace,
      String? fileName});
}

/// @nodoc
class _$CertificateInsertRequestCopyWithImpl<$Res,
        $Val extends CertificateInsertRequest>
    implements $CertificateInsertRequestCopyWith<$Res> {
  _$CertificateInsertRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateName = freezed,
    Object? graduationYear = freezed,
    Object? degree = freezed,
    Object? academicRank = freezed,
    Object? studyPlace = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      certificateName: freezed == certificateName
          ? _value.certificateName
          : certificateName // ignore: cast_nullable_to_non_nullable
              as String?,
      graduationYear: freezed == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as int?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String?,
      academicRank: freezed == academicRank
          ? _value.academicRank
          : academicRank // ignore: cast_nullable_to_non_nullable
              as String?,
      studyPlace: freezed == studyPlace
          ? _value.studyPlace
          : studyPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CertificateInsertRequestCopyWith<$Res>
    implements $CertificateInsertRequestCopyWith<$Res> {
  factory _$$_CertificateInsertRequestCopyWith(
          _$_CertificateInsertRequest value,
          $Res Function(_$_CertificateInsertRequest) then) =
      __$$_CertificateInsertRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? certificateName,
      int? graduationYear,
      String? degree,
      String? academicRank,
      String? studyPlace,
      String? fileName});
}

/// @nodoc
class __$$_CertificateInsertRequestCopyWithImpl<$Res>
    extends _$CertificateInsertRequestCopyWithImpl<$Res,
        _$_CertificateInsertRequest>
    implements _$$_CertificateInsertRequestCopyWith<$Res> {
  __$$_CertificateInsertRequestCopyWithImpl(_$_CertificateInsertRequest _value,
      $Res Function(_$_CertificateInsertRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateName = freezed,
    Object? graduationYear = freezed,
    Object? degree = freezed,
    Object? academicRank = freezed,
    Object? studyPlace = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_$_CertificateInsertRequest(
      certificateName: freezed == certificateName
          ? _value.certificateName
          : certificateName // ignore: cast_nullable_to_non_nullable
              as String?,
      graduationYear: freezed == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as int?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String?,
      academicRank: freezed == academicRank
          ? _value.academicRank
          : academicRank // ignore: cast_nullable_to_non_nullable
              as String?,
      studyPlace: freezed == studyPlace
          ? _value.studyPlace
          : studyPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CertificateInsertRequest implements _CertificateInsertRequest {
  const _$_CertificateInsertRequest(
      {this.certificateName,
      this.graduationYear,
      this.degree,
      this.academicRank,
      this.studyPlace,
      this.fileName});

  factory _$_CertificateInsertRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateInsertRequestFromJson(json);

  @override
  final String? certificateName;
  @override
  final int? graduationYear;
  @override
  final String? degree;
  @override
  final String? academicRank;
  @override
  final String? studyPlace;
  @override
  final String? fileName;

  @override
  String toString() {
    return 'CertificateInsertRequest(certificateName: $certificateName, graduationYear: $graduationYear, degree: $degree, academicRank: $academicRank, studyPlace: $studyPlace, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CertificateInsertRequest &&
            (identical(other.certificateName, certificateName) ||
                other.certificateName == certificateName) &&
            (identical(other.graduationYear, graduationYear) ||
                other.graduationYear == graduationYear) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.academicRank, academicRank) ||
                other.academicRank == academicRank) &&
            (identical(other.studyPlace, studyPlace) ||
                other.studyPlace == studyPlace) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, certificateName, graduationYear,
      degree, academicRank, studyPlace, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CertificateInsertRequestCopyWith<_$_CertificateInsertRequest>
      get copyWith => __$$_CertificateInsertRequestCopyWithImpl<
          _$_CertificateInsertRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificateInsertRequestToJson(
      this,
    );
  }
}

abstract class _CertificateInsertRequest implements CertificateInsertRequest {
  const factory _CertificateInsertRequest(
      {final String? certificateName,
      final int? graduationYear,
      final String? degree,
      final String? academicRank,
      final String? studyPlace,
      final String? fileName}) = _$_CertificateInsertRequest;

  factory _CertificateInsertRequest.fromJson(Map<String, dynamic> json) =
      _$_CertificateInsertRequest.fromJson;

  @override
  String? get certificateName;
  @override
  int? get graduationYear;
  @override
  String? get degree;
  @override
  String? get academicRank;
  @override
  String? get studyPlace;
  @override
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateInsertRequestCopyWith<_$_CertificateInsertRequest>
      get copyWith => throw _privateConstructorUsedError;
}
