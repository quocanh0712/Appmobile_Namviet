// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_daily_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDailyRequest _$ScheduleDailyRequestFromJson(Map<String, dynamic> json) {
  return _ScheduleDailyRequest.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDailyRequest {
  String? get idUser => throw _privateConstructorUsedError;
  String? get nowdate => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDailyRequestCopyWith<ScheduleDailyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDailyRequestCopyWith<$Res> {
  factory $ScheduleDailyRequestCopyWith(ScheduleDailyRequest value,
          $Res Function(ScheduleDailyRequest) then) =
      _$ScheduleDailyRequestCopyWithImpl<$Res, ScheduleDailyRequest>;
  @useResult
  $Res call({String? idUser, String? nowdate, int? startindex, int? length});
}

/// @nodoc
class _$ScheduleDailyRequestCopyWithImpl<$Res,
        $Val extends ScheduleDailyRequest>
    implements $ScheduleDailyRequestCopyWith<$Res> {
  _$ScheduleDailyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? nowdate = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      nowdate: freezed == nowdate
          ? _value.nowdate
          : nowdate // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDailyRequestImplCopyWith<$Res>
    implements $ScheduleDailyRequestCopyWith<$Res> {
  factory _$$ScheduleDailyRequestImplCopyWith(_$ScheduleDailyRequestImpl value,
          $Res Function(_$ScheduleDailyRequestImpl) then) =
      __$$ScheduleDailyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idUser, String? nowdate, int? startindex, int? length});
}

/// @nodoc
class __$$ScheduleDailyRequestImplCopyWithImpl<$Res>
    extends _$ScheduleDailyRequestCopyWithImpl<$Res, _$ScheduleDailyRequestImpl>
    implements _$$ScheduleDailyRequestImplCopyWith<$Res> {
  __$$ScheduleDailyRequestImplCopyWithImpl(_$ScheduleDailyRequestImpl _value,
      $Res Function(_$ScheduleDailyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = freezed,
    Object? nowdate = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
  }) {
    return _then(_$ScheduleDailyRequestImpl(
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as String?,
      nowdate: freezed == nowdate
          ? _value.nowdate
          : nowdate // ignore: cast_nullable_to_non_nullable
              as String?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDailyRequestImpl implements _ScheduleDailyRequest {
  const _$ScheduleDailyRequestImpl(
      {this.idUser, this.nowdate, this.startindex, this.length});

  factory _$ScheduleDailyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDailyRequestImplFromJson(json);

  @override
  final String? idUser;
  @override
  final String? nowdate;
  @override
  final int? startindex;
  @override
  final int? length;

  @override
  String toString() {
    return 'ScheduleDailyRequest(idUser: $idUser, nowdate: $nowdate, startindex: $startindex, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDailyRequestImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.nowdate, nowdate) || other.nowdate == nowdate) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idUser, nowdate, startindex, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDailyRequestImplCopyWith<_$ScheduleDailyRequestImpl>
      get copyWith =>
          __$$ScheduleDailyRequestImplCopyWithImpl<_$ScheduleDailyRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDailyRequestImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDailyRequest implements ScheduleDailyRequest {
  const factory _ScheduleDailyRequest(
      {final String? idUser,
      final String? nowdate,
      final int? startindex,
      final int? length}) = _$ScheduleDailyRequestImpl;

  factory _ScheduleDailyRequest.fromJson(Map<String, dynamic> json) =
      _$ScheduleDailyRequestImpl.fromJson;

  @override
  String? get idUser;
  @override
  String? get nowdate;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleDailyRequestImplCopyWith<_$ScheduleDailyRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
