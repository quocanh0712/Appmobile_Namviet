// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CertificateClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CertificateRequest? model) getCertificateList,
    required TResult Function(CertificateInsertRequest? model)
        insertNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateRequest? model)? getCertificateList,
    TResult? Function(CertificateInsertRequest? model)? insertNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateRequest? model)? getCertificateList,
    TResult Function(CertificateInsertRequest? model)? insertNewCertificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CertificateList value) getCertificateList,
    required TResult Function(_InsertCertificate value) insertNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CertificateList value)? getCertificateList,
    TResult? Function(_InsertCertificate value)? insertNewCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CertificateList value)? getCertificateList,
    TResult Function(_InsertCertificate value)? insertNewCertificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateClientCopyWith<$Res> {
  factory $CertificateClientCopyWith(
          CertificateClient value, $Res Function(CertificateClient) then) =
      _$CertificateClientCopyWithImpl<$Res, CertificateClient>;
}

/// @nodoc
class _$CertificateClientCopyWithImpl<$Res, $Val extends CertificateClient>
    implements $CertificateClientCopyWith<$Res> {
  _$CertificateClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CertificateListImplCopyWith<$Res> {
  factory _$$CertificateListImplCopyWith(_$CertificateListImpl value,
          $Res Function(_$CertificateListImpl) then) =
      __$$CertificateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateRequest? model});

  $CertificateRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$CertificateListImplCopyWithImpl<$Res>
    extends _$CertificateClientCopyWithImpl<$Res, _$CertificateListImpl>
    implements _$$CertificateListImplCopyWith<$Res> {
  __$$CertificateListImplCopyWithImpl(
      _$CertificateListImpl _value, $Res Function(_$CertificateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$CertificateListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CertificateRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CertificateRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CertificateListImpl extends _CertificateList {
  _$CertificateListImpl(this.model) : super._();

  @override
  final CertificateRequest? model;

  @override
  String toString() {
    return 'CertificateClient.getCertificateList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertificateListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CertificateListImplCopyWith<_$CertificateListImpl> get copyWith =>
      __$$CertificateListImplCopyWithImpl<_$CertificateListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CertificateRequest? model) getCertificateList,
    required TResult Function(CertificateInsertRequest? model)
        insertNewCertificate,
  }) {
    return getCertificateList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateRequest? model)? getCertificateList,
    TResult? Function(CertificateInsertRequest? model)? insertNewCertificate,
  }) {
    return getCertificateList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateRequest? model)? getCertificateList,
    TResult Function(CertificateInsertRequest? model)? insertNewCertificate,
    required TResult orElse(),
  }) {
    if (getCertificateList != null) {
      return getCertificateList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CertificateList value) getCertificateList,
    required TResult Function(_InsertCertificate value) insertNewCertificate,
  }) {
    return getCertificateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CertificateList value)? getCertificateList,
    TResult? Function(_InsertCertificate value)? insertNewCertificate,
  }) {
    return getCertificateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CertificateList value)? getCertificateList,
    TResult Function(_InsertCertificate value)? insertNewCertificate,
    required TResult orElse(),
  }) {
    if (getCertificateList != null) {
      return getCertificateList(this);
    }
    return orElse();
  }
}

abstract class _CertificateList extends CertificateClient {
  factory _CertificateList(final CertificateRequest? model) =
      _$CertificateListImpl;
  _CertificateList._() : super._();

  @override
  CertificateRequest? get model;
  @JsonKey(ignore: true)
  _$$CertificateListImplCopyWith<_$CertificateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertCertificateImplCopyWith<$Res> {
  factory _$$InsertCertificateImplCopyWith(_$InsertCertificateImpl value,
          $Res Function(_$InsertCertificateImpl) then) =
      __$$InsertCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateInsertRequest? model});

  $CertificateInsertRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$InsertCertificateImplCopyWithImpl<$Res>
    extends _$CertificateClientCopyWithImpl<$Res, _$InsertCertificateImpl>
    implements _$$InsertCertificateImplCopyWith<$Res> {
  __$$InsertCertificateImplCopyWithImpl(_$InsertCertificateImpl _value,
      $Res Function(_$InsertCertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$InsertCertificateImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CertificateInsertRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateInsertRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CertificateInsertRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$InsertCertificateImpl extends _InsertCertificate {
  _$InsertCertificateImpl(this.model) : super._();

  @override
  final CertificateInsertRequest? model;

  @override
  String toString() {
    return 'CertificateClient.insertNewCertificate(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertCertificateImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertCertificateImplCopyWith<_$InsertCertificateImpl> get copyWith =>
      __$$InsertCertificateImplCopyWithImpl<_$InsertCertificateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CertificateRequest? model) getCertificateList,
    required TResult Function(CertificateInsertRequest? model)
        insertNewCertificate,
  }) {
    return insertNewCertificate(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateRequest? model)? getCertificateList,
    TResult? Function(CertificateInsertRequest? model)? insertNewCertificate,
  }) {
    return insertNewCertificate?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateRequest? model)? getCertificateList,
    TResult Function(CertificateInsertRequest? model)? insertNewCertificate,
    required TResult orElse(),
  }) {
    if (insertNewCertificate != null) {
      return insertNewCertificate(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CertificateList value) getCertificateList,
    required TResult Function(_InsertCertificate value) insertNewCertificate,
  }) {
    return insertNewCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CertificateList value)? getCertificateList,
    TResult? Function(_InsertCertificate value)? insertNewCertificate,
  }) {
    return insertNewCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CertificateList value)? getCertificateList,
    TResult Function(_InsertCertificate value)? insertNewCertificate,
    required TResult orElse(),
  }) {
    if (insertNewCertificate != null) {
      return insertNewCertificate(this);
    }
    return orElse();
  }
}

abstract class _InsertCertificate extends CertificateClient {
  factory _InsertCertificate(final CertificateInsertRequest? model) =
      _$InsertCertificateImpl;
  _InsertCertificate._() : super._();

  @override
  CertificateInsertRequest? get model;
  @JsonKey(ignore: true)
  _$$InsertCertificateImplCopyWith<_$InsertCertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
