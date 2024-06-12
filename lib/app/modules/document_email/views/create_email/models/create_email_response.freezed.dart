// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateEmailResponse _$CreateEmailResponseFromJson(Map<String, dynamic> json) {
  return _CreateEmailResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateEmailResponse {
  String? get iduser => throw _privateConstructorUsedError;
  List<int>? get listNguoiNhan => throw _privateConstructorUsedError;
  String? get tieuDe => throw _privateConstructorUsedError;
  String? get noiDung => throw _privateConstructorUsedError;
  List<String>? get listFile => throw _privateConstructorUsedError;
  int? get phanLoai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEmailResponseCopyWith<CreateEmailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmailResponseCopyWith<$Res> {
  factory $CreateEmailResponseCopyWith(
          CreateEmailResponse value, $Res Function(CreateEmailResponse) then) =
      _$CreateEmailResponseCopyWithImpl<$Res, CreateEmailResponse>;
  @useResult
  $Res call(
      {String? iduser,
      List<int>? listNguoiNhan,
      String? tieuDe,
      String? noiDung,
      List<String>? listFile,
      int? phanLoai});
}

/// @nodoc
class _$CreateEmailResponseCopyWithImpl<$Res, $Val extends CreateEmailResponse>
    implements $CreateEmailResponseCopyWith<$Res> {
  _$CreateEmailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? listNguoiNhan = freezed,
    Object? tieuDe = freezed,
    Object? noiDung = freezed,
    Object? listFile = freezed,
    Object? phanLoai = freezed,
  }) {
    return _then(_value.copyWith(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      listNguoiNhan: freezed == listNguoiNhan
          ? _value.listNguoiNhan
          : listNguoiNhan // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tieuDe: freezed == tieuDe
          ? _value.tieuDe
          : tieuDe // ignore: cast_nullable_to_non_nullable
              as String?,
      noiDung: freezed == noiDung
          ? _value.noiDung
          : noiDung // ignore: cast_nullable_to_non_nullable
              as String?,
      listFile: freezed == listFile
          ? _value.listFile
          : listFile // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phanLoai: freezed == phanLoai
          ? _value.phanLoai
          : phanLoai // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEmailResponseImplCopyWith<$Res>
    implements $CreateEmailResponseCopyWith<$Res> {
  factory _$$CreateEmailResponseImplCopyWith(_$CreateEmailResponseImpl value,
          $Res Function(_$CreateEmailResponseImpl) then) =
      __$$CreateEmailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iduser,
      List<int>? listNguoiNhan,
      String? tieuDe,
      String? noiDung,
      List<String>? listFile,
      int? phanLoai});
}

/// @nodoc
class __$$CreateEmailResponseImplCopyWithImpl<$Res>
    extends _$CreateEmailResponseCopyWithImpl<$Res, _$CreateEmailResponseImpl>
    implements _$$CreateEmailResponseImplCopyWith<$Res> {
  __$$CreateEmailResponseImplCopyWithImpl(_$CreateEmailResponseImpl _value,
      $Res Function(_$CreateEmailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? listNguoiNhan = freezed,
    Object? tieuDe = freezed,
    Object? noiDung = freezed,
    Object? listFile = freezed,
    Object? phanLoai = freezed,
  }) {
    return _then(_$CreateEmailResponseImpl(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      listNguoiNhan: freezed == listNguoiNhan
          ? _value._listNguoiNhan
          : listNguoiNhan // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tieuDe: freezed == tieuDe
          ? _value.tieuDe
          : tieuDe // ignore: cast_nullable_to_non_nullable
              as String?,
      noiDung: freezed == noiDung
          ? _value.noiDung
          : noiDung // ignore: cast_nullable_to_non_nullable
              as String?,
      listFile: freezed == listFile
          ? _value._listFile
          : listFile // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phanLoai: freezed == phanLoai
          ? _value.phanLoai
          : phanLoai // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateEmailResponseImpl implements _CreateEmailResponse {
  _$CreateEmailResponseImpl(
      {this.iduser,
      final List<int>? listNguoiNhan,
      this.tieuDe,
      this.noiDung,
      final List<String>? listFile,
      this.phanLoai})
      : _listNguoiNhan = listNguoiNhan,
        _listFile = listFile;

  factory _$CreateEmailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEmailResponseImplFromJson(json);

  @override
  final String? iduser;
  final List<int>? _listNguoiNhan;
  @override
  List<int>? get listNguoiNhan {
    final value = _listNguoiNhan;
    if (value == null) return null;
    if (_listNguoiNhan is EqualUnmodifiableListView) return _listNguoiNhan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? tieuDe;
  @override
  final String? noiDung;
  final List<String>? _listFile;
  @override
  List<String>? get listFile {
    final value = _listFile;
    if (value == null) return null;
    if (_listFile is EqualUnmodifiableListView) return _listFile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? phanLoai;

  @override
  String toString() {
    return 'CreateEmailResponse(iduser: $iduser, listNguoiNhan: $listNguoiNhan, tieuDe: $tieuDe, noiDung: $noiDung, listFile: $listFile, phanLoai: $phanLoai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEmailResponseImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            const DeepCollectionEquality()
                .equals(other._listNguoiNhan, _listNguoiNhan) &&
            (identical(other.tieuDe, tieuDe) || other.tieuDe == tieuDe) &&
            (identical(other.noiDung, noiDung) || other.noiDung == noiDung) &&
            const DeepCollectionEquality().equals(other._listFile, _listFile) &&
            (identical(other.phanLoai, phanLoai) ||
                other.phanLoai == phanLoai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      iduser,
      const DeepCollectionEquality().hash(_listNguoiNhan),
      tieuDe,
      noiDung,
      const DeepCollectionEquality().hash(_listFile),
      phanLoai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEmailResponseImplCopyWith<_$CreateEmailResponseImpl> get copyWith =>
      __$$CreateEmailResponseImplCopyWithImpl<_$CreateEmailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateEmailResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateEmailResponse implements CreateEmailResponse {
  factory _CreateEmailResponse(
      {final String? iduser,
      final List<int>? listNguoiNhan,
      final String? tieuDe,
      final String? noiDung,
      final List<String>? listFile,
      final int? phanLoai}) = _$CreateEmailResponseImpl;

  factory _CreateEmailResponse.fromJson(Map<String, dynamic> json) =
      _$CreateEmailResponseImpl.fromJson;

  @override
  String? get iduser;
  @override
  List<int>? get listNguoiNhan;
  @override
  String? get tieuDe;
  @override
  String? get noiDung;
  @override
  List<String>? get listFile;
  @override
  int? get phanLoai;
  @override
  @JsonKey(ignore: true)
  _$$CreateEmailResponseImplCopyWith<_$CreateEmailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
