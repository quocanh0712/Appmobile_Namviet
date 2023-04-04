// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_recent_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_HomeRecentTaskCopyWith<$Res>
    implements $HomeRecentTaskCopyWith<$Res> {
  factory _$$_HomeRecentTaskCopyWith(
          _$_HomeRecentTask value, $Res Function(_$_HomeRecentTask) then) =
      __$$_HomeRecentTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? tasktime, String? content});
}

/// @nodoc
class __$$_HomeRecentTaskCopyWithImpl<$Res>
    extends _$HomeRecentTaskCopyWithImpl<$Res, _$_HomeRecentTask>
    implements _$$_HomeRecentTaskCopyWith<$Res> {
  __$$_HomeRecentTaskCopyWithImpl(
      _$_HomeRecentTask _value, $Res Function(_$_HomeRecentTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tasktime = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_HomeRecentTask(
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
class _$_HomeRecentTask implements _HomeRecentTask {
  _$_HomeRecentTask({this.id, this.tasktime, this.content});

  factory _$_HomeRecentTask.fromJson(Map<String, dynamic> json) =>
      _$$_HomeRecentTaskFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeRecentTask &&
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
  _$$_HomeRecentTaskCopyWith<_$_HomeRecentTask> get copyWith =>
      __$$_HomeRecentTaskCopyWithImpl<_$_HomeRecentTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeRecentTaskToJson(
      this,
    );
  }
}

abstract class _HomeRecentTask implements HomeRecentTask {
  factory _HomeRecentTask(
      {final int? id,
      final String? tasktime,
      final String? content}) = _$_HomeRecentTask;

  factory _HomeRecentTask.fromJson(Map<String, dynamic> json) =
      _$_HomeRecentTask.fromJson;

  @override
  int? get id;
  @override
  String? get tasktime;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_HomeRecentTaskCopyWith<_$_HomeRecentTask> get copyWith =>
      throw _privateConstructorUsedError;
}
