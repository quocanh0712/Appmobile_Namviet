// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_result_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurveyResultClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurveyResultRequest? model) getSurveyList,
    required TResult Function(SurveyItemRequest? model) getDetailSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurveyResultRequest? model)? getSurveyList,
    TResult? Function(SurveyItemRequest? model)? getDetailSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurveyResultRequest? model)? getSurveyList,
    TResult Function(SurveyItemRequest? model)? getDetailSurvey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SurveyList value) getSurveyList,
    required TResult Function(_DetailSurvey value) getDetailSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SurveyList value)? getSurveyList,
    TResult? Function(_DetailSurvey value)? getDetailSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SurveyList value)? getSurveyList,
    TResult Function(_DetailSurvey value)? getDetailSurvey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultClientCopyWith<$Res> {
  factory $SurveyResultClientCopyWith(
          SurveyResultClient value, $Res Function(SurveyResultClient) then) =
      _$SurveyResultClientCopyWithImpl<$Res, SurveyResultClient>;
}

/// @nodoc
class _$SurveyResultClientCopyWithImpl<$Res, $Val extends SurveyResultClient>
    implements $SurveyResultClientCopyWith<$Res> {
  _$SurveyResultClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SurveyListImplCopyWith<$Res> {
  factory _$$SurveyListImplCopyWith(
          _$SurveyListImpl value, $Res Function(_$SurveyListImpl) then) =
      __$$SurveyListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SurveyResultRequest? model});

  $SurveyResultRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$SurveyListImplCopyWithImpl<$Res>
    extends _$SurveyResultClientCopyWithImpl<$Res, _$SurveyListImpl>
    implements _$$SurveyListImplCopyWith<$Res> {
  __$$SurveyListImplCopyWithImpl(
      _$SurveyListImpl _value, $Res Function(_$SurveyListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$SurveyListImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SurveyResultRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurveyResultRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $SurveyResultRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SurveyListImpl extends _SurveyList {
  _$SurveyListImpl(this.model) : super._();

  @override
  final SurveyResultRequest? model;

  @override
  String toString() {
    return 'SurveyResultClient.getSurveyList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyListImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyListImplCopyWith<_$SurveyListImpl> get copyWith =>
      __$$SurveyListImplCopyWithImpl<_$SurveyListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurveyResultRequest? model) getSurveyList,
    required TResult Function(SurveyItemRequest? model) getDetailSurvey,
  }) {
    return getSurveyList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurveyResultRequest? model)? getSurveyList,
    TResult? Function(SurveyItemRequest? model)? getDetailSurvey,
  }) {
    return getSurveyList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurveyResultRequest? model)? getSurveyList,
    TResult Function(SurveyItemRequest? model)? getDetailSurvey,
    required TResult orElse(),
  }) {
    if (getSurveyList != null) {
      return getSurveyList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SurveyList value) getSurveyList,
    required TResult Function(_DetailSurvey value) getDetailSurvey,
  }) {
    return getSurveyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SurveyList value)? getSurveyList,
    TResult? Function(_DetailSurvey value)? getDetailSurvey,
  }) {
    return getSurveyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SurveyList value)? getSurveyList,
    TResult Function(_DetailSurvey value)? getDetailSurvey,
    required TResult orElse(),
  }) {
    if (getSurveyList != null) {
      return getSurveyList(this);
    }
    return orElse();
  }
}

abstract class _SurveyList extends SurveyResultClient {
  factory _SurveyList(final SurveyResultRequest? model) = _$SurveyListImpl;
  _SurveyList._() : super._();

  @override
  SurveyResultRequest? get model;
  @JsonKey(ignore: true)
  _$$SurveyListImplCopyWith<_$SurveyListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailSurveyImplCopyWith<$Res> {
  factory _$$DetailSurveyImplCopyWith(
          _$DetailSurveyImpl value, $Res Function(_$DetailSurveyImpl) then) =
      __$$DetailSurveyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SurveyItemRequest? model});

  $SurveyItemRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$DetailSurveyImplCopyWithImpl<$Res>
    extends _$SurveyResultClientCopyWithImpl<$Res, _$DetailSurveyImpl>
    implements _$$DetailSurveyImplCopyWith<$Res> {
  __$$DetailSurveyImplCopyWithImpl(
      _$DetailSurveyImpl _value, $Res Function(_$DetailSurveyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$DetailSurveyImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SurveyItemRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurveyItemRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $SurveyItemRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$DetailSurveyImpl extends _DetailSurvey {
  _$DetailSurveyImpl(this.model) : super._();

  @override
  final SurveyItemRequest? model;

  @override
  String toString() {
    return 'SurveyResultClient.getDetailSurvey(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSurveyImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSurveyImplCopyWith<_$DetailSurveyImpl> get copyWith =>
      __$$DetailSurveyImplCopyWithImpl<_$DetailSurveyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurveyResultRequest? model) getSurveyList,
    required TResult Function(SurveyItemRequest? model) getDetailSurvey,
  }) {
    return getDetailSurvey(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurveyResultRequest? model)? getSurveyList,
    TResult? Function(SurveyItemRequest? model)? getDetailSurvey,
  }) {
    return getDetailSurvey?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurveyResultRequest? model)? getSurveyList,
    TResult Function(SurveyItemRequest? model)? getDetailSurvey,
    required TResult orElse(),
  }) {
    if (getDetailSurvey != null) {
      return getDetailSurvey(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SurveyList value) getSurveyList,
    required TResult Function(_DetailSurvey value) getDetailSurvey,
  }) {
    return getDetailSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SurveyList value)? getSurveyList,
    TResult? Function(_DetailSurvey value)? getDetailSurvey,
  }) {
    return getDetailSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SurveyList value)? getSurveyList,
    TResult Function(_DetailSurvey value)? getDetailSurvey,
    required TResult orElse(),
  }) {
    if (getDetailSurvey != null) {
      return getDetailSurvey(this);
    }
    return orElse();
  }
}

abstract class _DetailSurvey extends SurveyResultClient {
  factory _DetailSurvey(final SurveyItemRequest? model) = _$DetailSurveyImpl;
  _DetailSurvey._() : super._();

  @override
  SurveyItemRequest? get model;
  @JsonKey(ignore: true)
  _$$DetailSurveyImplCopyWith<_$DetailSurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
