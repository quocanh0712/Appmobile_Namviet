// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_recent_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeRecentTask _$HomeRecentTaskFromJson(Map<String, dynamic> json) {
  return _HomeRecentTask.fromJson(json);
}

/// @nodoc
mixin _$HomeRecentTask {
  int? get id => throw _privateConstructorUsedError;
  String? get tasktime => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeRecentTaskCopyWith<HomeRecentTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRecentTaskCopyWith<$Res> {
  factory $HomeRecentTaskCopyWith(
          HomeRecentTask value, $Res Function(HomeRecentTask) then) =
      _$HomeRecentTaskCopyWithImpl<$Res, HomeRecentTask>;
  @useResult
  $Res call({int? id, String? tasktime, String? content});
}

/// @nodoc
class _$HomeRecentTaskCopyWithImpl<$Res, $Val extends HomeRecentTask>
    implements $HomeRecentTaskCopyWith<$Res> {
  _$HomeRecentTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tasktime = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tasktime: freezed == tasktime
          ? _value.tasktime
          : tasktime // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeRecentTaskImplCopyWith<$Res>
    implements $HomeRecentTaskCopyWith<$Res> {
  factory _$$HomeRecentTaskImplCopyWith(_$HomeRecentTaskImpl value,
          $Res Function(_$HomeRecentTaskImpl) then) =
      __$$HomeRecentTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? tasktime, String? content});
}

/// @nodoc
class __$$HomeRecentTaskImplCopyWithImpl<$Res>
    extends _$HomeRecentTaskCopyWithImpl<$Res, _$HomeRecentTaskImpl>
    implements _$$HomeRecentTaskImplCopyWith<$Res> {
  __$$HomeRecentTaskImplCopyWithImpl(
      _$HomeRecentTaskImpl _value, $Res Function(_$HomeRecentTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tasktime = freezed,
    Object? content = freezed,
  }) {
    return _then(_$HomeRecentTaskImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tasktime: freezed == tasktime
          ? _value.tasktime
          : tasktime // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeRecentTaskImpl implements _HomeRecentTask {
  _$HomeRecentTaskImpl({this.id, this.tasktime, this.content});

  factory _$HomeRecentTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeRecentTaskImplFromJson(json);

  @override
  final int? id;
  @override
  final String? tasktime;
  @override
  final String? content;

  @override
  String toString() {
    return 'HomeRecentTask(id: $id, tasktime: $tasktime, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRecentTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tasktime, tasktime) ||
                other.tasktime == tasktime) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tasktime, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRecentTaskImplCopyWith<_$HomeRecentTaskImpl> get copyWith =>
      __$$HomeRecentTaskImplCopyWithImpl<_$HomeRecentTaskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeRecentTaskImplToJson(
      this,
    );
  }
}

abstract class _HomeRecentTask implements HomeRecentTask {
  factory _HomeRecentTask(
      {final int? id,
      final String? tasktime,
      final String? content}) = _$HomeRecentTaskImpl;

  factory _HomeRecentTask.fromJson(Map<String, dynamic> json) =
      _$HomeRecentTaskImpl.fromJson;

  @override
  int? get id;
  @override
  String? get tasktime;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$HomeRecentTaskImplCopyWith<_$HomeRecentTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
