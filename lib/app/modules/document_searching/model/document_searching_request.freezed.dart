// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_searching_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentSearchingRequest _$DocumentSearchingRequestFromJson(
    Map<String, dynamic> json) {
  return _DocumentSearchingRequest.fromJson(json);
}

/// @nodoc
mixin _$DocumentSearchingRequest {
  String? get iduser => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'loai_diden')
  String? get loaiDiDen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentSearchingRequestCopyWith<DocumentSearchingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentSearchingRequestCopyWith<$Res> {
  factory $DocumentSearchingRequestCopyWith(DocumentSearchingRequest value,
          $Res Function(DocumentSearchingRequest) then) =
      _$DocumentSearchingRequestCopyWithImpl<$Res, DocumentSearchingRequest>;
  @useResult
  $Res call(
      {String? iduser,
      int? startindex,
      int? length,
      @JsonKey(name: 'loai_diden') String? loaiDiDen});
}

/// @nodoc
class _$DocumentSearchingRequestCopyWithImpl<$Res,
        $Val extends DocumentSearchingRequest>
    implements $DocumentSearchingRequestCopyWith<$Res> {
  _$DocumentSearchingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? loaiDiDen = freezed,
  }) {
    return _then(_value.copyWith(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      loaiDiDen: freezed == loaiDiDen
          ? _value.loaiDiDen
          : loaiDiDen // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentSearchingRequestImplCopyWith<$Res>
    implements $DocumentSearchingRequestCopyWith<$Res> {
  factory _$$DocumentSearchingRequestImplCopyWith(
          _$DocumentSearchingRequestImpl value,
          $Res Function(_$DocumentSearchingRequestImpl) then) =
      __$$DocumentSearchingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iduser,
      int? startindex,
      int? length,
      @JsonKey(name: 'loai_diden') String? loaiDiDen});
}

/// @nodoc
class __$$DocumentSearchingRequestImplCopyWithImpl<$Res>
    extends _$DocumentSearchingRequestCopyWithImpl<$Res,
        _$DocumentSearchingRequestImpl>
    implements _$$DocumentSearchingRequestImplCopyWith<$Res> {
  __$$DocumentSearchingRequestImplCopyWithImpl(
      _$DocumentSearchingRequestImpl _value,
      $Res Function(_$DocumentSearchingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iduser = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? loaiDiDen = freezed,
  }) {
    return _then(_$DocumentSearchingRequestImpl(
      iduser: freezed == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      loaiDiDen: freezed == loaiDiDen
          ? _value.loaiDiDen
          : loaiDiDen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentSearchingRequestImpl implements _DocumentSearchingRequest {
  _$DocumentSearchingRequestImpl(
      {this.iduser,
      this.startindex,
      this.length,
      @JsonKey(name: 'loai_diden') this.loaiDiDen});

  factory _$DocumentSearchingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentSearchingRequestImplFromJson(json);

  @override
  final String? iduser;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  @JsonKey(name: 'loai_diden')
  final String? loaiDiDen;

  @override
  String toString() {
    return 'DocumentSearchingRequest(iduser: $iduser, startindex: $startindex, length: $length, loaiDiDen: $loaiDiDen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentSearchingRequestImpl &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.loaiDiDen, loaiDiDen) ||
                other.loaiDiDen == loaiDiDen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iduser, startindex, length, loaiDiDen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentSearchingRequestImplCopyWith<_$DocumentSearchingRequestImpl>
      get copyWith => __$$DocumentSearchingRequestImplCopyWithImpl<
          _$DocumentSearchingRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentSearchingRequestImplToJson(
      this,
    );
  }
}

abstract class _DocumentSearchingRequest implements DocumentSearchingRequest {
  factory _DocumentSearchingRequest(
          {final String? iduser,
          final int? startindex,
          final int? length,
          @JsonKey(name: 'loai_diden') final String? loaiDiDen}) =
      _$DocumentSearchingRequestImpl;

  factory _DocumentSearchingRequest.fromJson(Map<String, dynamic> json) =
      _$DocumentSearchingRequestImpl.fromJson;

  @override
  String? get iduser;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(name: 'loai_diden')
  String? get loaiDiDen;
  @override
  @JsonKey(ignore: true)
  _$$DocumentSearchingRequestImplCopyWith<_$DocumentSearchingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
