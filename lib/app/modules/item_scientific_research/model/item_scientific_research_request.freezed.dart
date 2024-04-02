// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_scientific_research_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ItemScientificResearchRequestImplCopyWith<$Res>
    implements $ItemScientificResearchRequestCopyWith<$Res> {
  factory _$$ItemScientificResearchRequestImplCopyWith(
          _$ItemScientificResearchRequestImpl value,
          $Res Function(_$ItemScientificResearchRequestImpl) then) =
      __$$ItemScientificResearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? idTypeNckh, int? startindex, int? length, String? keyword});
}

/// @nodoc
class __$$ItemScientificResearchRequestImplCopyWithImpl<$Res>
    extends _$ItemScientificResearchRequestCopyWithImpl<$Res,
        _$ItemScientificResearchRequestImpl>
    implements _$$ItemScientificResearchRequestImplCopyWith<$Res> {
  __$$ItemScientificResearchRequestImplCopyWithImpl(
      _$ItemScientificResearchRequestImpl _value,
      $Res Function(_$ItemScientificResearchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTypeNckh = freezed,
    Object? startindex = freezed,
    Object? length = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$ItemScientificResearchRequestImpl(
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
class _$ItemScientificResearchRequestImpl
    implements _ItemScientificResearchRequest {
  const _$ItemScientificResearchRequestImpl(
      {this.idTypeNckh, this.startindex, this.length, this.keyword});

  factory _$ItemScientificResearchRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ItemScientificResearchRequestImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemScientificResearchRequestImpl &&
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
  _$$ItemScientificResearchRequestImplCopyWith<
          _$ItemScientificResearchRequestImpl>
      get copyWith => __$$ItemScientificResearchRequestImplCopyWithImpl<
          _$ItemScientificResearchRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemScientificResearchRequestImplToJson(
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
      final String? keyword}) = _$ItemScientificResearchRequestImpl;

  factory _ItemScientificResearchRequest.fromJson(Map<String, dynamic> json) =
      _$ItemScientificResearchRequestImpl.fromJson;

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
  _$$ItemScientificResearchRequestImplCopyWith<
          _$ItemScientificResearchRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
