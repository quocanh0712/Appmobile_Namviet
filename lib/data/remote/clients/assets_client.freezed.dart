// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assets_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_InventoryCopyWith<$Res> {
  factory _$$_InventoryCopyWith(
          _$_Inventory value, $Res Function(_$_Inventory) then) =
      __$$_InventoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String? barcode, String? schedulecode});
}

/// @nodoc
class __$$_InventoryCopyWithImpl<$Res>
    extends _$AssetsClientCopyWithImpl<$Res, _$_Inventory>
    implements _$$_InventoryCopyWith<$Res> {
  __$$_InventoryCopyWithImpl(
      _$_Inventory _value, $Res Function(_$_Inventory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = freezed,
    Object? schedulecode = freezed,
  }) {
    return _then(_$_Inventory(
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

class _$_Inventory extends _Inventory {
  _$_Inventory(this.barcode, this.schedulecode) : super._();

  @override
  final String? barcode;
  @override
  final String? schedulecode;

  @override
  String toString() {
    return 'AssetsClient.checkin(barcode: $barcode, schedulecode: $schedulecode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inventory &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.schedulecode, schedulecode) ||
                other.schedulecode == schedulecode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode, schedulecode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      __$$_InventoryCopyWithImpl<_$_Inventory>(this, _$identity);

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
      _$_Inventory;
  _Inventory._() : super._();

  String? get barcode;
  String? get schedulecode;
  @JsonKey(ignore: true)
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InventoryInfoCopyWith<$Res> {
  factory _$$_InventoryInfoCopyWith(
          _$_InventoryInfo value, $Res Function(_$_InventoryInfo) then) =
      __$$_InventoryInfoCopyWithImpl<$Res>;
  @useResult
  $Res call({String? barcode});
}

/// @nodoc
class __$$_InventoryInfoCopyWithImpl<$Res>
    extends _$AssetsClientCopyWithImpl<$Res, _$_InventoryInfo>
    implements _$$_InventoryInfoCopyWith<$Res> {
  __$$_InventoryInfoCopyWithImpl(
      _$_InventoryInfo _value, $Res Function(_$_InventoryInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = freezed,
  }) {
    return _then(_$_InventoryInfo(
      freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InventoryInfo extends _InventoryInfo {
  _$_InventoryInfo(this.barcode) : super._();

  @override
  final String? barcode;

  @override
  String toString() {
    return 'AssetsClient.scaninfo(barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryInfo &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryInfoCopyWith<_$_InventoryInfo> get copyWith =>
      __$$_InventoryInfoCopyWithImpl<_$_InventoryInfo>(this, _$identity);

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
  factory _InventoryInfo(final String? barcode) = _$_InventoryInfo;
  _InventoryInfo._() : super._();

  String? get barcode;
  @JsonKey(ignore: true)
  _$$_InventoryInfoCopyWith<_$_InventoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InventoryScheduleCopyWith<$Res> {
  factory _$$_InventoryScheduleCopyWith(_$_InventorySchedule value,
          $Res Function(_$_InventorySchedule) then) =
      __$$_InventoryScheduleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InventoryScheduleCopyWithImpl<$Res>
    extends _$AssetsClientCopyWithImpl<$Res, _$_InventorySchedule>
    implements _$$_InventoryScheduleCopyWith<$Res> {
  __$$_InventoryScheduleCopyWithImpl(
      _$_InventorySchedule _value, $Res Function(_$_InventorySchedule) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InventorySchedule extends _InventorySchedule {
  _$_InventorySchedule() : super._();

  @override
  String toString() {
    return 'AssetsClient.schedulecheckin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InventorySchedule);
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
  factory _InventorySchedule() = _$_InventorySchedule;
  _InventorySchedule._() : super._();
}
