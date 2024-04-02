// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteRequestModel _$DeleteRequestModelFromJson(Map<String, dynamic> json) {
  return _DeleteRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteRequestModel {
  String? get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteRequestModelCopyWith<DeleteRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRequestModelCopyWith<$Res> {
  factory $DeleteRequestModelCopyWith(
          DeleteRequestModel value, $Res Function(DeleteRequestModel) then) =
      _$DeleteRequestModelCopyWithImpl<$Res, DeleteRequestModel>;
  @useResult
  $Res call({String? requestId});
}

/// @nodoc
class _$DeleteRequestModelCopyWithImpl<$Res, $Val extends DeleteRequestModel>
    implements $DeleteRequestModelCopyWith<$Res> {
  _$DeleteRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteRequestModelImplCopyWith<$Res>
    implements $DeleteRequestModelCopyWith<$Res> {
  factory _$$DeleteRequestModelImplCopyWith(_$DeleteRequestModelImpl value,
          $Res Function(_$DeleteRequestModelImpl) then) =
      __$$DeleteRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? requestId});
}

/// @nodoc
class __$$DeleteRequestModelImplCopyWithImpl<$Res>
    extends _$DeleteRequestModelCopyWithImpl<$Res, _$DeleteRequestModelImpl>
    implements _$$DeleteRequestModelImplCopyWith<$Res> {
  __$$DeleteRequestModelImplCopyWithImpl(_$DeleteRequestModelImpl _value,
      $Res Function(_$DeleteRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_$DeleteRequestModelImpl(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRequestModelImpl implements _DeleteRequestModel {
  const _$DeleteRequestModelImpl({this.requestId});

  factory _$DeleteRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRequestModelImplFromJson(json);

  @override
  final String? requestId;

  @override
  String toString() {
    return 'DeleteRequestModel(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRequestModelImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRequestModelImplCopyWith<_$DeleteRequestModelImpl> get copyWith =>
      __$$DeleteRequestModelImplCopyWithImpl<_$DeleteRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRequestModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteRequestModel implements DeleteRequestModel {
  const factory _DeleteRequestModel({final String? requestId}) =
      _$DeleteRequestModelImpl;

  factory _DeleteRequestModel.fromJson(Map<String, dynamic> json) =
      _$DeleteRequestModelImpl.fromJson;

  @override
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRequestModelImplCopyWith<_$DeleteRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
