// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configurations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppConfigurations _$AppConfigurationsFromJson(Map<String, dynamic> json) {
  return _AppConfigurations.fromJson(json);
}

/// @nodoc
mixin _$AppConfigurations {
  @HiveField(0)
  int? get latestSyncedTime => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get accessToken => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get refreshToken => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get baseUrl => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get idDonVi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppConfigurationsCopyWith<AppConfigurations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigurationsCopyWith<$Res> {
  factory $AppConfigurationsCopyWith(
          AppConfigurations value, $Res Function(AppConfigurations) then) =
      _$AppConfigurationsCopyWithImpl<$Res, AppConfigurations>;
  @useResult
  $Res call(
      {@HiveField(0) int? latestSyncedTime,
      @HiveField(4) String? accessToken,
      @HiveField(5) String? refreshToken,
      @HiveField(6) String? baseUrl,
      @HiveField(7) int? idDonVi});
}

/// @nodoc
class _$AppConfigurationsCopyWithImpl<$Res, $Val extends AppConfigurations>
    implements $AppConfigurationsCopyWith<$Res> {
  _$AppConfigurationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestSyncedTime = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? baseUrl = freezed,
    Object? idDonVi = freezed,
  }) {
    return _then(_value.copyWith(
      latestSyncedTime: freezed == latestSyncedTime
          ? _value.latestSyncedTime
          : latestSyncedTime // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      idDonVi: freezed == idDonVi
          ? _value.idDonVi
          : idDonVi // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigurationsImplCopyWith<$Res>
    implements $AppConfigurationsCopyWith<$Res> {
  factory _$$AppConfigurationsImplCopyWith(_$AppConfigurationsImpl value,
          $Res Function(_$AppConfigurationsImpl) then) =
      __$$AppConfigurationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? latestSyncedTime,
      @HiveField(4) String? accessToken,
      @HiveField(5) String? refreshToken,
      @HiveField(6) String? baseUrl,
      @HiveField(7) int? idDonVi});
}

/// @nodoc
class __$$AppConfigurationsImplCopyWithImpl<$Res>
    extends _$AppConfigurationsCopyWithImpl<$Res, _$AppConfigurationsImpl>
    implements _$$AppConfigurationsImplCopyWith<$Res> {
  __$$AppConfigurationsImplCopyWithImpl(_$AppConfigurationsImpl _value,
      $Res Function(_$AppConfigurationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestSyncedTime = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? baseUrl = freezed,
    Object? idDonVi = freezed,
  }) {
    return _then(_$AppConfigurationsImpl(
      latestSyncedTime: freezed == latestSyncedTime
          ? _value.latestSyncedTime
          : latestSyncedTime // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      idDonVi: freezed == idDonVi
          ? _value.idDonVi
          : idDonVi // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppConfigurationsImpl implements _AppConfigurations {
  _$AppConfigurationsImpl(
      {@HiveField(0) this.latestSyncedTime,
      @HiveField(4) this.accessToken,
      @HiveField(5) this.refreshToken,
      @HiveField(6) this.baseUrl,
      @HiveField(7) this.idDonVi});

  factory _$AppConfigurationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppConfigurationsImplFromJson(json);

  @override
  @HiveField(0)
  final int? latestSyncedTime;
  @override
  @HiveField(4)
  final String? accessToken;
  @override
  @HiveField(5)
  final String? refreshToken;
  @override
  @HiveField(6)
  final String? baseUrl;
  @override
  @HiveField(7)
  final int? idDonVi;

  @override
  String toString() {
    return 'AppConfigurations(latestSyncedTime: $latestSyncedTime, accessToken: $accessToken, refreshToken: $refreshToken, baseUrl: $baseUrl, idDonVi: $idDonVi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigurationsImpl &&
            (identical(other.latestSyncedTime, latestSyncedTime) ||
                other.latestSyncedTime == latestSyncedTime) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.idDonVi, idDonVi) || other.idDonVi == idDonVi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latestSyncedTime, accessToken,
      refreshToken, baseUrl, idDonVi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigurationsImplCopyWith<_$AppConfigurationsImpl> get copyWith =>
      __$$AppConfigurationsImplCopyWithImpl<_$AppConfigurationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConfigurationsImplToJson(
      this,
    );
  }
}

abstract class _AppConfigurations implements AppConfigurations {
  factory _AppConfigurations(
      {@HiveField(0) final int? latestSyncedTime,
      @HiveField(4) final String? accessToken,
      @HiveField(5) final String? refreshToken,
      @HiveField(6) final String? baseUrl,
      @HiveField(7) final int? idDonVi}) = _$AppConfigurationsImpl;

  factory _AppConfigurations.fromJson(Map<String, dynamic> json) =
      _$AppConfigurationsImpl.fromJson;

  @override
  @HiveField(0)
  int? get latestSyncedTime;
  @override
  @HiveField(4)
  String? get accessToken;
  @override
  @HiveField(5)
  String? get refreshToken;
  @override
  @HiveField(6)
  String? get baseUrl;
  @override
  @HiveField(7)
  int? get idDonVi;
  @override
  @JsonKey(ignore: true)
  _$$AppConfigurationsImplCopyWith<_$AppConfigurationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
