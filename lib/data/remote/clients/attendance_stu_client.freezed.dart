// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_stu_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceStuClient {
  Object? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceStuRequest? model) getClassList,
    required TResult Function(ListLessonRequest? model) getLessonList,
    required TResult Function(ListStudentAttendanceRequest? model)
        getStudentAttendanceList,
    required TResult Function(AttendanceStuRequest? model) getYearTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStuRequest? model)? getClassList,
    TResult? Function(ListLessonRequest? model)? getLessonList,
    TResult? Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult? Function(AttendanceStuRequest? model)? getYearTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceStuRequest? model)? getClassList,
    TResult Function(ListLessonRequest? model)? getLessonList,
    TResult Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult Function(AttendanceStuRequest? model)? getYearTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttendanceStuClient value) getClassList,
    required TResult Function(_ListLesson value) getLessonList,
    required TResult Function(_ListStudentAttendance value)
        getStudentAttendanceList,
    required TResult Function(_YearTime value) getYearTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttendanceStuClient value)? getClassList,
    TResult? Function(_ListLesson value)? getLessonList,
    TResult? Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult? Function(_YearTime value)? getYearTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttendanceStuClient value)? getClassList,
    TResult Function(_ListLesson value)? getLessonList,
    TResult Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult Function(_YearTime value)? getYearTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStuClientCopyWith<$Res> {
  factory $AttendanceStuClientCopyWith(
          AttendanceStuClient value, $Res Function(AttendanceStuClient) then) =
      _$AttendanceStuClientCopyWithImpl<$Res, AttendanceStuClient>;
}

/// @nodoc
class _$AttendanceStuClientCopyWithImpl<$Res, $Val extends AttendanceStuClient>
    implements $AttendanceStuClientCopyWith<$Res> {
  _$AttendanceStuClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AttendanceStuClientImplCopyWith<$Res> {
  factory _$$AttendanceStuClientImplCopyWith(_$AttendanceStuClientImpl value,
          $Res Function(_$AttendanceStuClientImpl) then) =
      __$$AttendanceStuClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendanceStuRequest? model});

  $AttendanceStuRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$AttendanceStuClientImplCopyWithImpl<$Res>
    extends _$AttendanceStuClientCopyWithImpl<$Res, _$AttendanceStuClientImpl>
    implements _$$AttendanceStuClientImplCopyWith<$Res> {
  __$$AttendanceStuClientImplCopyWithImpl(_$AttendanceStuClientImpl _value,
      $Res Function(_$AttendanceStuClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AttendanceStuClientImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AttendanceStuRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceStuRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $AttendanceStuRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AttendanceStuClientImpl extends _AttendanceStuClient {
  _$AttendanceStuClientImpl(this.model) : super._();

  @override
  final AttendanceStuRequest? model;

  @override
  String toString() {
    return 'AttendanceStuClient.getClassList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStuClientImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStuClientImplCopyWith<_$AttendanceStuClientImpl> get copyWith =>
      __$$AttendanceStuClientImplCopyWithImpl<_$AttendanceStuClientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceStuRequest? model) getClassList,
    required TResult Function(ListLessonRequest? model) getLessonList,
    required TResult Function(ListStudentAttendanceRequest? model)
        getStudentAttendanceList,
    required TResult Function(AttendanceStuRequest? model) getYearTime,
  }) {
    return getClassList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStuRequest? model)? getClassList,
    TResult? Function(ListLessonRequest? model)? getLessonList,
    TResult? Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult? Function(AttendanceStuRequest? model)? getYearTime,
  }) {
    return getClassList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceStuRequest? model)? getClassList,
    TResult Function(ListLessonRequest? model)? getLessonList,
    TResult Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult Function(AttendanceStuRequest? model)? getYearTime,
    required TResult orElse(),
  }) {
    if (getClassList != null) {
      return getClassList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttendanceStuClient value) getClassList,
    required TResult Function(_ListLesson value) getLessonList,
    required TResult Function(_ListStudentAttendance value)
        getStudentAttendanceList,
    required TResult Function(_YearTime value) getYearTime,
  }) {
    return getClassList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttendanceStuClient value)? getClassList,
    TResult? Function(_ListLesson value)? getLessonList,
    TResult? Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult? Function(_YearTime value)? getYearTime,
  }) {
    return getClassList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttendanceStuClient value)? getClassList,
    TResult Function(_ListLesson value)? getLessonList,
    TResult Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult Function(_YearTime value)? getYearTime,
    required TResult orElse(),
  }) {
    if (getClassList != null) {
      return getClassList(this);
    }
    return orElse();
  }
}

abstract class _AttendanceStuClient extends AttendanceStuClient {
  factory _AttendanceStuClient(final AttendanceStuRequest? model) =
      _$AttendanceStuClientImpl;
  _AttendanceStuClient._() : super._();

  @override
  AttendanceStuRequest? get model;
  @JsonKey(ignore: true)
  _$$AttendanceStuClientImplCopyWith<_$AttendanceStuClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListLessonImplCopyWith<$Res> {
  factory _$$ListLessonImplCopyWith(
          _$ListLessonImpl value, $Res Function(_$ListLessonImpl) then) =
      __$$ListLessonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListLessonRequest? model});

  $ListLessonRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$ListLessonImplCopyWithImpl<$Res>
    extends _$AttendanceStuClientCopyWithImpl<$Res, _$ListLessonImpl>
    implements _$$ListLessonImplCopyWith<$Res> {
  __$$ListLessonImplCopyWithImpl(
      _$ListLessonImpl _value, $Res Function(_$ListLessonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$ListLessonImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ListLessonRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListLessonRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ListLessonRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ListLessonImpl extends _ListLesson {
  _$ListLessonImpl(this.model) : super._();

  @override
  final ListLessonRequest? model;

  @override
  String toString() {
    return 'AttendanceStuClient.getLessonList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLessonImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLessonImplCopyWith<_$ListLessonImpl> get copyWith =>
      __$$ListLessonImplCopyWithImpl<_$ListLessonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceStuRequest? model) getClassList,
    required TResult Function(ListLessonRequest? model) getLessonList,
    required TResult Function(ListStudentAttendanceRequest? model)
        getStudentAttendanceList,
    required TResult Function(AttendanceStuRequest? model) getYearTime,
  }) {
    return getLessonList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStuRequest? model)? getClassList,
    TResult? Function(ListLessonRequest? model)? getLessonList,
    TResult? Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult? Function(AttendanceStuRequest? model)? getYearTime,
  }) {
    return getLessonList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceStuRequest? model)? getClassList,
    TResult Function(ListLessonRequest? model)? getLessonList,
    TResult Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult Function(AttendanceStuRequest? model)? getYearTime,
    required TResult orElse(),
  }) {
    if (getLessonList != null) {
      return getLessonList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttendanceStuClient value) getClassList,
    required TResult Function(_ListLesson value) getLessonList,
    required TResult Function(_ListStudentAttendance value)
        getStudentAttendanceList,
    required TResult Function(_YearTime value) getYearTime,
  }) {
    return getLessonList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttendanceStuClient value)? getClassList,
    TResult? Function(_ListLesson value)? getLessonList,
    TResult? Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult? Function(_YearTime value)? getYearTime,
  }) {
    return getLessonList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttendanceStuClient value)? getClassList,
    TResult Function(_ListLesson value)? getLessonList,
    TResult Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult Function(_YearTime value)? getYearTime,
    required TResult orElse(),
  }) {
    if (getLessonList != null) {
      return getLessonList(this);
    }
    return orElse();
  }
}

abstract class _ListLesson extends AttendanceStuClient {
  factory _ListLesson(final ListLessonRequest? model) = _$ListLessonImpl;
  _ListLesson._() : super._();

  @override
  ListLessonRequest? get model;
  @JsonKey(ignore: true)
  _$$ListLessonImplCopyWith<_$ListLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListStudentAttendanceImplCopyWith<$Res> {
  factory _$$ListStudentAttendanceImplCopyWith(
          _$ListStudentAttendanceImpl value,
          $Res Function(_$ListStudentAttendanceImpl) then) =
      __$$ListStudentAttendanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListStudentAttendanceRequest? model});

  $ListStudentAttendanceRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$ListStudentAttendanceImplCopyWithImpl<$Res>
    extends _$AttendanceStuClientCopyWithImpl<$Res, _$ListStudentAttendanceImpl>
    implements _$$ListStudentAttendanceImplCopyWith<$Res> {
  __$$ListStudentAttendanceImplCopyWithImpl(_$ListStudentAttendanceImpl _value,
      $Res Function(_$ListStudentAttendanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$ListStudentAttendanceImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ListStudentAttendanceRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListStudentAttendanceRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ListStudentAttendanceRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ListStudentAttendanceImpl extends _ListStudentAttendance {
  _$ListStudentAttendanceImpl(this.model) : super._();

  @override
  final ListStudentAttendanceRequest? model;

  @override
  String toString() {
    return 'AttendanceStuClient.getStudentAttendanceList(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStudentAttendanceImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStudentAttendanceImplCopyWith<_$ListStudentAttendanceImpl>
      get copyWith => __$$ListStudentAttendanceImplCopyWithImpl<
          _$ListStudentAttendanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceStuRequest? model) getClassList,
    required TResult Function(ListLessonRequest? model) getLessonList,
    required TResult Function(ListStudentAttendanceRequest? model)
        getStudentAttendanceList,
    required TResult Function(AttendanceStuRequest? model) getYearTime,
  }) {
    return getStudentAttendanceList(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStuRequest? model)? getClassList,
    TResult? Function(ListLessonRequest? model)? getLessonList,
    TResult? Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult? Function(AttendanceStuRequest? model)? getYearTime,
  }) {
    return getStudentAttendanceList?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceStuRequest? model)? getClassList,
    TResult Function(ListLessonRequest? model)? getLessonList,
    TResult Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult Function(AttendanceStuRequest? model)? getYearTime,
    required TResult orElse(),
  }) {
    if (getStudentAttendanceList != null) {
      return getStudentAttendanceList(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttendanceStuClient value) getClassList,
    required TResult Function(_ListLesson value) getLessonList,
    required TResult Function(_ListStudentAttendance value)
        getStudentAttendanceList,
    required TResult Function(_YearTime value) getYearTime,
  }) {
    return getStudentAttendanceList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttendanceStuClient value)? getClassList,
    TResult? Function(_ListLesson value)? getLessonList,
    TResult? Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult? Function(_YearTime value)? getYearTime,
  }) {
    return getStudentAttendanceList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttendanceStuClient value)? getClassList,
    TResult Function(_ListLesson value)? getLessonList,
    TResult Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult Function(_YearTime value)? getYearTime,
    required TResult orElse(),
  }) {
    if (getStudentAttendanceList != null) {
      return getStudentAttendanceList(this);
    }
    return orElse();
  }
}

abstract class _ListStudentAttendance extends AttendanceStuClient {
  factory _ListStudentAttendance(final ListStudentAttendanceRequest? model) =
      _$ListStudentAttendanceImpl;
  _ListStudentAttendance._() : super._();

  @override
  ListStudentAttendanceRequest? get model;
  @JsonKey(ignore: true)
  _$$ListStudentAttendanceImplCopyWith<_$ListStudentAttendanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YearTimeImplCopyWith<$Res> {
  factory _$$YearTimeImplCopyWith(
          _$YearTimeImpl value, $Res Function(_$YearTimeImpl) then) =
      __$$YearTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AttendanceStuRequest? model});

  $AttendanceStuRequestCopyWith<$Res>? get model;
}

/// @nodoc
class __$$YearTimeImplCopyWithImpl<$Res>
    extends _$AttendanceStuClientCopyWithImpl<$Res, _$YearTimeImpl>
    implements _$$YearTimeImplCopyWith<$Res> {
  __$$YearTimeImplCopyWithImpl(
      _$YearTimeImpl _value, $Res Function(_$YearTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$YearTimeImpl(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AttendanceStuRequest?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceStuRequestCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $AttendanceStuRequestCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$YearTimeImpl extends _YearTime {
  _$YearTimeImpl(this.model) : super._();

  @override
  final AttendanceStuRequest? model;

  @override
  String toString() {
    return 'AttendanceStuClient.getYearTime(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearTimeImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearTimeImplCopyWith<_$YearTimeImpl> get copyWith =>
      __$$YearTimeImplCopyWithImpl<_$YearTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceStuRequest? model) getClassList,
    required TResult Function(ListLessonRequest? model) getLessonList,
    required TResult Function(ListStudentAttendanceRequest? model)
        getStudentAttendanceList,
    required TResult Function(AttendanceStuRequest? model) getYearTime,
  }) {
    return getYearTime(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceStuRequest? model)? getClassList,
    TResult? Function(ListLessonRequest? model)? getLessonList,
    TResult? Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult? Function(AttendanceStuRequest? model)? getYearTime,
  }) {
    return getYearTime?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceStuRequest? model)? getClassList,
    TResult Function(ListLessonRequest? model)? getLessonList,
    TResult Function(ListStudentAttendanceRequest? model)?
        getStudentAttendanceList,
    TResult Function(AttendanceStuRequest? model)? getYearTime,
    required TResult orElse(),
  }) {
    if (getYearTime != null) {
      return getYearTime(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttendanceStuClient value) getClassList,
    required TResult Function(_ListLesson value) getLessonList,
    required TResult Function(_ListStudentAttendance value)
        getStudentAttendanceList,
    required TResult Function(_YearTime value) getYearTime,
  }) {
    return getYearTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttendanceStuClient value)? getClassList,
    TResult? Function(_ListLesson value)? getLessonList,
    TResult? Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult? Function(_YearTime value)? getYearTime,
  }) {
    return getYearTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttendanceStuClient value)? getClassList,
    TResult Function(_ListLesson value)? getLessonList,
    TResult Function(_ListStudentAttendance value)? getStudentAttendanceList,
    TResult Function(_YearTime value)? getYearTime,
    required TResult orElse(),
  }) {
    if (getYearTime != null) {
      return getYearTime(this);
    }
    return orElse();
  }
}

abstract class _YearTime extends AttendanceStuClient {
  factory _YearTime(final AttendanceStuRequest? model) = _$YearTimeImpl;
  _YearTime._() : super._();

  @override
  AttendanceStuRequest? get model;
  @JsonKey(ignore: true)
  _$$YearTimeImplCopyWith<_$YearTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
