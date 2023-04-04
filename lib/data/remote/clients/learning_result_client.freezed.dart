// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_result_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningResultClient {
  LearningResultRequestParams? get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LearningResultRequestParams? params)
        retriveSemsterPoint,
    required TResult Function(LearningResultRequestParams? params)
        retriveAllCoursesPoints,
    required TResult Function(LearningResultRequestParams? params)
        retriveSingleCoursePoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult? Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult? Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SemesterPoint value) retriveSemsterPoint,
    required TResult Function(_AllCoursesPoints value) retriveAllCoursesPoints,
    required TResult Function(_SingleCoursePoints value)
        retriveSingleCoursePoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult? Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult? Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningResultClientCopyWith<LearningResultClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningResultClientCopyWith<$Res> {
  factory $LearningResultClientCopyWith(LearningResultClient value,
          $Res Function(LearningResultClient) then) =
      _$LearningResultClientCopyWithImpl<$Res, LearningResultClient>;
  @useResult
  $Res call({LearningResultRequestParams? params});

  $LearningResultRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$LearningResultClientCopyWithImpl<$Res,
        $Val extends LearningResultClient>
    implements $LearningResultClientCopyWith<$Res> {
  _$LearningResultClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LearningResultRequestParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningResultRequestParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $LearningResultRequestParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SemesterPointCopyWith<$Res>
    implements $LearningResultClientCopyWith<$Res> {
  factory _$$_SemesterPointCopyWith(
          _$_SemesterPoint value, $Res Function(_$_SemesterPoint) then) =
      __$$_SemesterPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LearningResultRequestParams? params});

  @override
  $LearningResultRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_SemesterPointCopyWithImpl<$Res>
    extends _$LearningResultClientCopyWithImpl<$Res, _$_SemesterPoint>
    implements _$$_SemesterPointCopyWith<$Res> {
  __$$_SemesterPointCopyWithImpl(
      _$_SemesterPoint _value, $Res Function(_$_SemesterPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$_SemesterPoint(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LearningResultRequestParams?,
    ));
  }
}

/// @nodoc

class _$_SemesterPoint extends _SemesterPoint {
  _$_SemesterPoint(this.params) : super._();

  @override
  final LearningResultRequestParams? params;

  @override
  String toString() {
    return 'LearningResultClient.retriveSemsterPoint(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SemesterPoint &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SemesterPointCopyWith<_$_SemesterPoint> get copyWith =>
      __$$_SemesterPointCopyWithImpl<_$_SemesterPoint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LearningResultRequestParams? params)
        retriveSemsterPoint,
    required TResult Function(LearningResultRequestParams? params)
        retriveAllCoursesPoints,
    required TResult Function(LearningResultRequestParams? params)
        retriveSingleCoursePoints,
  }) {
    return retriveSemsterPoint(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult? Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult? Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
  }) {
    return retriveSemsterPoint?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
    required TResult orElse(),
  }) {
    if (retriveSemsterPoint != null) {
      return retriveSemsterPoint(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SemesterPoint value) retriveSemsterPoint,
    required TResult Function(_AllCoursesPoints value) retriveAllCoursesPoints,
    required TResult Function(_SingleCoursePoints value)
        retriveSingleCoursePoints,
  }) {
    return retriveSemsterPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult? Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult? Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
  }) {
    return retriveSemsterPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
    required TResult orElse(),
  }) {
    if (retriveSemsterPoint != null) {
      return retriveSemsterPoint(this);
    }
    return orElse();
  }
}

abstract class _SemesterPoint extends LearningResultClient {
  factory _SemesterPoint(final LearningResultRequestParams? params) =
      _$_SemesterPoint;
  _SemesterPoint._() : super._();

  @override
  LearningResultRequestParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_SemesterPointCopyWith<_$_SemesterPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AllCoursesPointsCopyWith<$Res>
    implements $LearningResultClientCopyWith<$Res> {
  factory _$$_AllCoursesPointsCopyWith(
          _$_AllCoursesPoints value, $Res Function(_$_AllCoursesPoints) then) =
      __$$_AllCoursesPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LearningResultRequestParams? params});

  @override
  $LearningResultRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_AllCoursesPointsCopyWithImpl<$Res>
    extends _$LearningResultClientCopyWithImpl<$Res, _$_AllCoursesPoints>
    implements _$$_AllCoursesPointsCopyWith<$Res> {
  __$$_AllCoursesPointsCopyWithImpl(
      _$_AllCoursesPoints _value, $Res Function(_$_AllCoursesPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$_AllCoursesPoints(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LearningResultRequestParams?,
    ));
  }
}

/// @nodoc

class _$_AllCoursesPoints extends _AllCoursesPoints {
  _$_AllCoursesPoints(this.params) : super._();

  @override
  final LearningResultRequestParams? params;

  @override
  String toString() {
    return 'LearningResultClient.retriveAllCoursesPoints(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllCoursesPoints &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllCoursesPointsCopyWith<_$_AllCoursesPoints> get copyWith =>
      __$$_AllCoursesPointsCopyWithImpl<_$_AllCoursesPoints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LearningResultRequestParams? params)
        retriveSemsterPoint,
    required TResult Function(LearningResultRequestParams? params)
        retriveAllCoursesPoints,
    required TResult Function(LearningResultRequestParams? params)
        retriveSingleCoursePoints,
  }) {
    return retriveAllCoursesPoints(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult? Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult? Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
  }) {
    return retriveAllCoursesPoints?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
    required TResult orElse(),
  }) {
    if (retriveAllCoursesPoints != null) {
      return retriveAllCoursesPoints(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SemesterPoint value) retriveSemsterPoint,
    required TResult Function(_AllCoursesPoints value) retriveAllCoursesPoints,
    required TResult Function(_SingleCoursePoints value)
        retriveSingleCoursePoints,
  }) {
    return retriveAllCoursesPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult? Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult? Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
  }) {
    return retriveAllCoursesPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
    required TResult orElse(),
  }) {
    if (retriveAllCoursesPoints != null) {
      return retriveAllCoursesPoints(this);
    }
    return orElse();
  }
}

abstract class _AllCoursesPoints extends LearningResultClient {
  factory _AllCoursesPoints(final LearningResultRequestParams? params) =
      _$_AllCoursesPoints;
  _AllCoursesPoints._() : super._();

  @override
  LearningResultRequestParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_AllCoursesPointsCopyWith<_$_AllCoursesPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SingleCoursePointsCopyWith<$Res>
    implements $LearningResultClientCopyWith<$Res> {
  factory _$$_SingleCoursePointsCopyWith(_$_SingleCoursePoints value,
          $Res Function(_$_SingleCoursePoints) then) =
      __$$_SingleCoursePointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LearningResultRequestParams? params});

  @override
  $LearningResultRequestParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_SingleCoursePointsCopyWithImpl<$Res>
    extends _$LearningResultClientCopyWithImpl<$Res, _$_SingleCoursePoints>
    implements _$$_SingleCoursePointsCopyWith<$Res> {
  __$$_SingleCoursePointsCopyWithImpl(
      _$_SingleCoursePoints _value, $Res Function(_$_SingleCoursePoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = freezed,
  }) {
    return _then(_$_SingleCoursePoints(
      freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LearningResultRequestParams?,
    ));
  }
}

/// @nodoc

class _$_SingleCoursePoints extends _SingleCoursePoints {
  _$_SingleCoursePoints(this.params) : super._();

  @override
  final LearningResultRequestParams? params;

  @override
  String toString() {
    return 'LearningResultClient.retriveSingleCoursePoints(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleCoursePoints &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleCoursePointsCopyWith<_$_SingleCoursePoints> get copyWith =>
      __$$_SingleCoursePointsCopyWithImpl<_$_SingleCoursePoints>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LearningResultRequestParams? params)
        retriveSemsterPoint,
    required TResult Function(LearningResultRequestParams? params)
        retriveAllCoursesPoints,
    required TResult Function(LearningResultRequestParams? params)
        retriveSingleCoursePoints,
  }) {
    return retriveSingleCoursePoints(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult? Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult? Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
  }) {
    return retriveSingleCoursePoints?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LearningResultRequestParams? params)? retriveSemsterPoint,
    TResult Function(LearningResultRequestParams? params)?
        retriveAllCoursesPoints,
    TResult Function(LearningResultRequestParams? params)?
        retriveSingleCoursePoints,
    required TResult orElse(),
  }) {
    if (retriveSingleCoursePoints != null) {
      return retriveSingleCoursePoints(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SemesterPoint value) retriveSemsterPoint,
    required TResult Function(_AllCoursesPoints value) retriveAllCoursesPoints,
    required TResult Function(_SingleCoursePoints value)
        retriveSingleCoursePoints,
  }) {
    return retriveSingleCoursePoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult? Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult? Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
  }) {
    return retriveSingleCoursePoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SemesterPoint value)? retriveSemsterPoint,
    TResult Function(_AllCoursesPoints value)? retriveAllCoursesPoints,
    TResult Function(_SingleCoursePoints value)? retriveSingleCoursePoints,
    required TResult orElse(),
  }) {
    if (retriveSingleCoursePoints != null) {
      return retriveSingleCoursePoints(this);
    }
    return orElse();
  }
}

abstract class _SingleCoursePoints extends LearningResultClient {
  factory _SingleCoursePoints(final LearningResultRequestParams? params) =
      _$_SingleCoursePoints;
  _SingleCoursePoints._() : super._();

  @override
  LearningResultRequestParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_SingleCoursePointsCopyWith<_$_SingleCoursePoints> get copyWith =>
      throw _privateConstructorUsedError;
}
