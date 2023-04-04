// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_teacher_info_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListTeacherInfoClient {
  TeacherInfoRequest? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeacherInfoRequest? model) getListTeacherInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeacherInfoRequest? model)? getListTeacherInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeacherInfoRequest? model)? getListTeacherInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListTeacherInfoClient value) getListTeacherInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListTeacherInfoClient value)? getListTeacherInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListTeacherInfoClient value)? getListTeacherInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListTeacherInfoClientCopyWith<ListTeacherInfoClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTeacherInfoClientCopyWith<$Res> {
  factory $ListTeacherInfoClientCopyWith(ListTeacherInfoClient value,
          $Res Function(ListTeacherInfoClient) then) =
      _$ListTeacherInfoClientCopyWithImpl<$Res, ListTeacherInfoClient>;
  @useResult
  $Res call({TeacherInfoRequest? model});

  $TeacherInfoRequestCopyWith<$Res>? get model;
}

/// @nodoc
class _$ListTeacherInfoClientCopyWithImpl<$Res,
        $Val extends ListTeacherInfoClient>
    implements $ListTeacherInfoClientCopyWith<$Res> {
  _$ListTeacherInfoClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TeacherInfoRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherInfoRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $TeacherInfoRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListTeacherInfoClientCopyWith<$Res>
    implements $ListTeacherInfoClientCopyWith<$Res> {
  factory _$$_ListTeacherInfoClientCopyWith(_$_ListTeacherInfoClient value,
          $Res Function(_$_ListTeacherInfoClient) then) =
      __$$_ListTeacherInfoClientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeacherInfoRequest? model});

  @override
  $TeacherInfoRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ListTeacherInfoClientCopyWithImpl<$Res>
    extends _$ListTeacherInfoClientCopyWithImpl<$Res, _$_ListTeacherInfoClient>
    implements _$$_ListTeacherInfoClientCopyWith<$Res> {
  __$$_ListTeacherInfoClientCopyWithImpl(_$_ListTeacherInfoClient _value,
      $Res Function(_$_ListTeacherInfoClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ListTeacherInfoClient(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TeacherInfoRequest?,
    ));
  }
}

/// @nodoc

class _$_ListTeacherInfoClient extends _ListTeacherInfoClient {
  _$_ListTeacherInfoClient(this.model) : super._();

  @override
  final TeacherInfoRequest? model;

  @override
  String toString() {
    return 'ListTeacherInfoClient.getListTeacherInfo(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListTeacherInfoClient &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListTeacherInfoClientCopyWith<_$_ListTeacherInfoClient> get copyWith =>
      __$$_ListTeacherInfoClientCopyWithImpl<_$_ListTeacherInfoClient>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeacherInfoRequest? model) getListTeacherInfo,
  }) {
    return getListTeacherInfo(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeacherInfoRequest? model)? getListTeacherInfo,
  }) {
    return getListTeacherInfo?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeacherInfoRequest? model)? getListTeacherInfo,
    required TResult orElse(),
  }) {
    if (getListTeacherInfo != null) {
      return getListTeacherInfo(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListTeacherInfoClient value) getListTeacherInfo,
  }) {
    return getListTeacherInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListTeacherInfoClient value)? getListTeacherInfo,
  }) {
    return getListTeacherInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListTeacherInfoClient value)? getListTeacherInfo,
    required TResult orElse(),
  }) {
    if (getListTeacherInfo != null) {
      return getListTeacherInfo(this);
    }
    return orElse();
  }
}

abstract class _ListTeacherInfoClient extends ListTeacherInfoClient {
  factory _ListTeacherInfoClient(final TeacherInfoRequest? model) =
      _$_ListTeacherInfoClient;
  _ListTeacherInfoClient._() : super._();

  @override
  TeacherInfoRequest? get model;
  @override
  @JsonKey(ignore: true)
  _$$_ListTeacherInfoClientCopyWith<_$_ListTeacherInfoClient> get copyWith =>
      throw _privateConstructorUsedError;
}
