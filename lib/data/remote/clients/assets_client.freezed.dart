// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetsClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? barcode, String? schedulecode) checkin,
    required TResult Function(String? barcode) scaninfo,
    required TResult Function() schedulecheckin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? barcode, String? schedulecode)? checkin,
    TResult? Function(String? barcode)? scaninfo,
    TResult? Function()? schedulecheckin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? barcode, String? schedulecode)? checkin,
    TResult Function(String? barcode)? scaninfo,
    TResult Function()? schedulecheckin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inventory value) checkin,
    required TResult Function(_InventoryInfo value) scaninfo,
    required TResult Function(_InventorySchedule value) schedulecheckin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inventory value)? checkin,
    TResult? Function(_InventoryInfo value)? scaninfo,
    TResult? Function(_InventorySchedule value)? schedulecheckin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inventory value)? checkin,
    TResult Function(_InventoryInfo value)? scaninfo,
    TResult Function(_InventorySchedule value)? schedulecheckin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsClientCopyWith<$Res> {
  factory $AssetsClientCopyWith(
          AssetsClient value, $Res Function(AssetsClient) then) =
      _$AssetsClientCopyWithImpl<$Res, AssetsClient>;
}

/// @nodoc
class _$AssetsClientCopyWithImpl<$Res, $Val extends AssetsClient>
    implements $AssetsClientCopyWith<$Res> {
  _$AssetsClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InventoryImplCopyWith<$Res> {
  factory _$$InventoryImplCopyWith(
          _$InventoryImpl value, $Res Function(_$InventoryImpl) then) =
      __$$InventoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? barcode, String? schedulecode});
}

/// @nodoc
class __$$InventoryImplCopyWithImpl<$Res>
    extends _$AssetsClientCopyWithImpl<$Res, _$InventoryImpl>
    implements _$$InventoryImplCopyWith<$Res> {
  __$$InventoryImplCopyWithImpl(
      _$InventoryImpl _value, $Res Function(_$InventoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = freezed,
    Object? schedulecode = freezed,
  }) {
    return _then(_$InventoryImpl(
      freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == schedulecode
          ? _value.schedulecode
          : schedulecode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InventoryImpl extends _Inventory {
  _$InventoryImpl(this.barcode, this.schedulecode) : super._();

  @override
  final String? barcode;
  @override
  final String? schedulecode;

  @override
  String toString() {
    return 'AssetsClient.checkin(barcode: $barcode, schedulecode: $schedulecode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.schedulecode, schedulecode) ||
                other.schedulecode == schedulecode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode, schedulecode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryImplCopyWith<_$InventoryImpl> get copyWith =>
      __$$InventoryImplCopyWithImpl<_$InventoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? barcode, String? schedulecode) checkin,
    required TResult Function(String? barcode) scaninfo,
    required TResult Function() schedulecheckin,
  }) {
    return checkin(barcode, schedulecode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? barcode, String? schedulecode)? checkin,
    TResult? Function(String? barcode)? scaninfo,
    TResult? Function()? schedulecheckin,
  }) {
    return checkin?.call(barcode, schedulecode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? barcode, String? schedulecode)? checkin,
    TResult Function(String? barcode)? scaninfo,
    TResult Function()? schedulecheckin,
    required TResult orElse(),
  }) {
    if (checkin != null) {
      return checkin(barcode, schedulecode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inventory value) checkin,
    required TResult Function(_InventoryInfo value) scaninfo,
    required TResult Function(_InventorySchedule value) schedulecheckin,
  }) {
    return checkin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inventory value)? checkin,
    TResult? Function(_InventoryInfo value)? scaninfo,
    TResult? Function(_InventorySchedule value)? schedulecheckin,
  }) {
    return checkin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inventory value)? checkin,
    TResult Function(_InventoryInfo value)? scaninfo,
    TResult Function(_InventorySchedule value)? schedulecheckin,
    required TResult orElse(),
  }) {
    if (checkin != null) {
      return checkin(this);
    }
    return orElse();
  }
}

abstract class _Inventory extends AssetsClient {
  factory _Inventory(final String? barcode, final String? schedulecode) =
      _$InventoryImpl;
  _Inventory._() : super._();

  String? get barcode;
  String? get schedulecode;
  @JsonKey(ignore: true)
  _$$InventoryImplCopyWith<_$InventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryInfoImplCopyWith<$Res> {
  factory _$$InventoryInfoImplCopyWith(
          _$InventoryInfoImpl value, $Res Function(_$InventoryInfoImpl) then) =
      __$$InventoryInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? barcode});
}

/// @nodoc
class __$$InventoryInfoImplCopyWithImpl<$Res>
    extends _$AssetsClientCopyWithImpl<$Res, _$InventoryInfoImpl>
    implements _$$InventoryInfoImplCopyWith<$Res> {
  __$$InventoryInfoImplCopyWithImpl(
      _$InventoryInfoImpl _value, $Res Function(_$InventoryInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = freezed,
  }) {
    return _then(_$InventoryInfoImpl(
      freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InventoryInfoImpl extends _InventoryInfo {
  _$InventoryInfoImpl(this.barcode) : super._();

  @override
  final String? barcode;

  @override
  String toString() {
    return 'AssetsClient.scaninfo(barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryInfoImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryInfoImplCopyWith<_$InventoryInfoImpl> get copyWith =>
      __$$InventoryInfoImplCopyWithImpl<_$InventoryInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? barcode, String? schedulecode) checkin,
    required TResult Function(String? barcode) scaninfo,
    required TResult Function() schedulecheckin,
  }) {
    return scaninfo(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? barcode, String? schedulecode)? checkin,
    TResult? Function(String? barcode)? scaninfo,
    TResult? Function()? schedulecheckin,
  }) {
    return scaninfo?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? barcode, String? schedulecode)? checkin,
    TResult Function(String? barcode)? scaninfo,
    TResult Function()? schedulecheckin,
    required TResult orElse(),
  }) {
    if (scaninfo != null) {
      return scaninfo(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inventory value) checkin,
    required TResult Function(_InventoryInfo value) scaninfo,
    required TResult Function(_InventorySchedule value) schedulecheckin,
  }) {
    return scaninfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inventory value)? checkin,
    TResult? Function(_InventoryInfo value)? scaninfo,
    TResult? Function(_InventorySchedule value)? schedulecheckin,
  }) {
    return scaninfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inventory value)? checkin,
    TResult Function(_InventoryInfo value)? scaninfo,
    TResult Function(_InventorySchedule value)? schedulecheckin,
    required TResult orElse(),
  }) {
    if (scaninfo != null) {
      return scaninfo(this);
    }
    return orElse();
  }
}

abstract class _InventoryInfo extends AssetsClient {
  factory _InventoryInfo(final String? barcode) = _$InventoryInfoImpl;
  _InventoryInfo._() : super._();

  String? get barcode;
  @JsonKey(ignore: true)
  _$$InventoryInfoImplCopyWith<_$InventoryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryScheduleImplCopyWith<$Res> {
  factory _$$InventoryScheduleImplCopyWith(_$InventoryScheduleImpl value,
          $Res Function(_$InventoryScheduleImpl) then) =
      __$$InventoryScheduleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryScheduleImplCopyWithImpl<$Res>
    extends _$AssetsClientCopyWithImpl<$Res, _$InventoryScheduleImpl>
    implements _$$InventoryScheduleImplCopyWith<$Res> {
  __$$InventoryScheduleImplCopyWithImpl(_$InventoryScheduleImpl _value,
      $Res Function(_$InventoryScheduleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InventoryScheduleImpl extends _InventorySchedule {
  _$InventoryScheduleImpl() : super._();

  @override
  String toString() {
    return 'AssetsClient.schedulecheckin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InventoryScheduleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? barcode, String? schedulecode) checkin,
    required TResult Function(String? barcode) scaninfo,
    required TResult Function() schedulecheckin,
  }) {
    return schedulecheckin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? barcode, String? schedulecode)? checkin,
    TResult? Function(String? barcode)? scaninfo,
    TResult? Function()? schedulecheckin,
  }) {
    return schedulecheckin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? barcode, String? schedulecode)? checkin,
    TResult Function(String? barcode)? scaninfo,
    TResult Function()? schedulecheckin,
    required TResult orElse(),
  }) {
    if (schedulecheckin != null) {
      return schedulecheckin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inventory value) checkin,
    required TResult Function(_InventoryInfo value) scaninfo,
    required TResult Function(_InventorySchedule value) schedulecheckin,
  }) {
    return schedulecheckin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inventory value)? checkin,
    TResult? Function(_InventoryInfo value)? scaninfo,
    TResult? Function(_InventorySchedule value)? schedulecheckin,
  }) {
    return schedulecheckin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inventory value)? checkin,
    TResult Function(_InventoryInfo value)? scaninfo,
    TResult Function(_InventorySchedule value)? schedulecheckin,
    required TResult orElse(),
  }) {
    if (schedulecheckin != null) {
      return schedulecheckin(this);
    }
    return orElse();
  }
}

abstract class _InventorySchedule extends AssetsClient {
  factory _InventorySchedule() = _$InventoryScheduleImpl;
  _InventorySchedule._() : super._();
}
