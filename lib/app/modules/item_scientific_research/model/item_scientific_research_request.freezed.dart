// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_scientific_research_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemScientificResearchRequest _$ItemScientificResearchRequestFromJson(
    Map<String, dynamic> json) {
  return _ItemScientificResearchRequest.fromJson(json);
}

/// @nodoc
mixin _$ItemScientificResearchRequest {
  int? get idTypeNckh => throw _privateConstructorUsedError;
  int? get startindex => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemScientificResearchRequestCopyWith<ItemScientificResearchRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemScientificResearchRequestCopyWith<$Res> {
  factory $ItemScientificResearchRequestCopyWith(
          ItemScientificResearchRequest value,
          $Res Function(ItemScientificResearchRequest) then) =
      _$ItemScientificResearchRequestCopyWithImpl<$Res,
          ItemScientificResearchRequest>;
  @useResult
  $Res call({int? idTypeNckh, int? startindex, int? length, String? keyword});
}

/// @nodoc
class _$ItemScientificResearchRequestCopyWithImpl<$Res,
        $Val extends ItemScientificResearchRequest>
    implements $ItemScientificResearchRequestCopyWith<$Res> {
  _$ItemScientificResearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTypeNckh = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_value.copyWith(
      idTypeNckh: freezed == idTypeNckh
          ? _value.idTypeNckh
          : idTypeNckh // ignore: cast_nullable_to_non_nullable
              as int?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemScientificResearchRequestCopyWith<$Res>
    implements $ItemScientificResearchRequestCopyWith<$Res> {
  factory _$$_ItemScientificResearchRequestCopyWith(
          _$_ItemScientificResearchRequest value,
          $Res Function(_$_ItemScientificResearchRequest) then) =
      __$$_ItemScientificResearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? idTypeNckh, int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$_ItemScientificResearchRequestCopyWithImpl<$Res>
    extends _$ItemScientificResearchRequestCopyWithImpl<$Res,
        _$_ItemScientificResearchRequest>
    implements _$$_ItemScientificResearchRequestCopyWith<$Res> {
  __$$_ItemScientificResearchRequestCopyWithImpl(
      _$_ItemScientificResearchRequest _value,
      $Res Function(_$_ItemScientificResearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTypeNckh = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$_ItemScientificResearchRequest(
      idTypeNckh: freezed == idTypeNckh
          ? _value.idTypeNckh
          : idTypeNckh // ignore: cast_nullable_to_non_nullable
              as int?,
      startindex: freezed == startindex
          ? _value.startindex
          : startindex // ignore: cast_nullable_to_non_nullable
              as int?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemScientificResearchRequest
    implements _ItemScientificResearchRequest {
  const _$_ItemScientificResearchRequest(
      {this.idTypeNckh, this.startindex, this.length, this.keyword});

  factory _$_ItemScientificResearchRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_ItemScientificResearchRequestFromJson(json);

  @override
  final int? idTypeNckh;
  @override
  final int? startindex;
  @override
  final int? length;
  @override
  final String? keyword;

  @override
  String toString() {
    return 'ItemScientificResearchRequest(idTypeNckh: $idTypeNckh, startindex: $startindex, length: $length, keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemScientificResearchRequest &&
            (identical(other.idTypeNckh, idTypeNckh) ||
                other.idTypeNckh == idTypeNckh) &&
            (identical(other.startindex, startindex) ||
                other.startindex == startindex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idTypeNckh, startindex, length, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemScientificResearchRequestCopyWith<_$_ItemScientificResearchRequest>
      get copyWith => __$$_ItemScientificResearchRequestCopyWithImpl<
          _$_ItemScientificResearchRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemScientificResearchRequestToJson(
      this,
    );
  }
}

abstract class _ItemScientificResearchRequest
    implements ItemScientificResearchRequest {
  const factory _ItemScientificResearchRequest(
      {final int? idTypeNckh,
      final int? startindex,
      final int? length,
      final String? keyword}) = _$_ItemScientificResearchRequest;

  factory _ItemScientificResearchRequest.fromJson(Map<String, dynamic> json) =
      _$_ItemScientificResearchRequest.fromJson;

  @override
  int? get idTypeNckh;
  @override
  int? get startindex;
  @override
  int? get length;
  @override
  String? get keyword;
  @override
  @JsonKey(ignore: true)
  _$$_ItemScientificResearchRequestCopyWith<_$_ItemScientificResearchRequest>
      get copyWith => throw _privateConstructorUsedError;
}
