// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_checkin_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheDuleCheckInObject _$ScheDuleCheckInObjectFromJson(
    Map<String, dynamic> json) {
  return _ScheDuleCheckInObject.fromJson(json);
}

/// @nodoc
mixin _$ScheDuleCheckInObject {
  @HiveField(0)
  int? get id_khkk => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get ma_khkk => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get ten_khkk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheDuleCheckInObjectCopyWith<ScheDuleCheckInObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheDuleCheckInObjectCopyWith<$Res> {
  factory $ScheDuleCheckInObjectCopyWith(ScheDuleCheckInObject value,
          $Res Function(ScheDuleCheckInObject) then) =
      _$ScheDuleCheckInObjectCopyWithImpl<$Res, ScheDuleCheckInObject>;
  @useResult
  $Res call(
      {@HiveField(0) int? id_khkk,
      @HiveField(1) String? ma_khkk,
      @HiveField(2) String? ten_khkk});
}

/// @nodoc
class _$ScheDuleCheckInObjectCopyWithImpl<$Res,
        $Val extends ScheDuleCheckInObject>
    implements $ScheDuleCheckInObjectCopyWith<$Res> {
  _$ScheDuleCheckInObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_khkk = freezed,
    Object? ma_khkk = freezed,
    Object? ten_khkk = freezed,
  }) {
    return _then(_value.copyWith(
      id_khkk: freezed == id_khkk
          ? _value.id_khkk
          : id_khkk // ignore: cast_nullable_to_non_nullable
              as int?,
      ma_khkk: freezed == ma_khkk
          ? _value.ma_khkk
          : ma_khkk // ignore: cast_nullable_to_non_nullable
              as String?,
      ten_khkk: freezed == ten_khkk
          ? _value.ten_khkk
          : ten_khkk // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheDuleCheckInObjectCopyWith<$Res>
    implements $ScheDuleCheckInObjectCopyWith<$Res> {
  factory _$$_ScheDuleCheckInObjectCopyWith(_$_ScheDuleCheckInObject value,
          $Res Function(_$_ScheDuleCheckInObject) then) =
      __$$_ScheDuleCheckInObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id_khkk,
      @HiveField(1) String? ma_khkk,
      @HiveField(2) String? ten_khkk});
}

/// @nodoc
class __$$_ScheDuleCheckInObjectCopyWithImpl<$Res>
    extends _$ScheDuleCheckInObjectCopyWithImpl<$Res, _$_ScheDuleCheckInObject>
    implements _$$_ScheDuleCheckInObjectCopyWith<$Res> {
  __$$_ScheDuleCheckInObjectCopyWithImpl(_$_ScheDuleCheckInObject _value,
      $Res Function(_$_ScheDuleCheckInObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_khkk = freezed,
    Object? ma_khkk = freezed,
    Object? ten_khkk = freezed,
  }) {
    return _then(_$_ScheDuleCheckInObject(
      id_khkk: freezed == id_khkk
          ? _value.id_khkk
          : id_khkk // ignore: cast_nullable_to_non_nullable
              as int?,
      ma_khkk: freezed == ma_khkk
          ? _value.ma_khkk
          : ma_khkk // ignore: cast_nullable_to_non_nullable
              as String?,
      ten_khkk: freezed == ten_khkk
          ? _value.ten_khkk
          : ten_khkk // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheDuleCheckInObject implements _ScheDuleCheckInObject {
  _$_ScheDuleCheckInObject(
      {@HiveField(0) this.id_khkk,
      @HiveField(1) this.ma_khkk,
      @HiveField(2) this.ten_khkk});

  factory _$_ScheDuleCheckInObject.fromJson(Map<String, dynamic> json) =>
      _$$_ScheDuleCheckInObjectFromJson(json);

  @override
  @HiveField(0)
  final int? id_khkk;
  @override
  @HiveField(1)
  final String? ma_khkk;
  @override
  @HiveField(2)
  final String? ten_khkk;

  @override
  String toString() {
    return 'ScheDuleCheckInObject(id_khkk: $id_khkk, ma_khkk: $ma_khkk, ten_khkk: $ten_khkk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheDuleCheckInObject &&
            (identical(other.id_khkk, id_khkk) || other.id_khkk == id_khkk) &&
            (identical(other.ma_khkk, ma_khkk) || other.ma_khkk == ma_khkk) &&
            (identical(other.ten_khkk, ten_khkk) ||
                other.ten_khkk == ten_khkk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id_khkk, ma_khkk, ten_khkk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheDuleCheckInObjectCopyWith<_$_ScheDuleCheckInObject> get copyWith =>
      __$$_ScheDuleCheckInObjectCopyWithImpl<_$_ScheDuleCheckInObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheDuleCheckInObjectToJson(
      this,
    );
  }
}

abstract class _ScheDuleCheckInObject implements ScheDuleCheckInObject {
  factory _ScheDuleCheckInObject(
      {@HiveField(0) final int? id_khkk,
      @HiveField(1) final String? ma_khkk,
      @HiveField(2) final String? ten_khkk}) = _$_ScheDuleCheckInObject;

  factory _ScheDuleCheckInObject.fromJson(Map<String, dynamic> json) =
      _$_ScheDuleCheckInObject.fromJson;

  @override
  @HiveField(0)
  int? get id_khkk;
  @override
  @HiveField(1)
  String? get ma_khkk;
  @override
  @HiveField(2)
  String? get ten_khkk;
  @override
  @JsonKey(ignore: true)
  _$$_ScheDuleCheckInObjectCopyWith<_$_ScheDuleCheckInObject> get copyWith =>
      throw _privateConstructorUsedError;
}
