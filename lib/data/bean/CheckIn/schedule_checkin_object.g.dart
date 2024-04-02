// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_checkin_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheDuleCheckInObjectAdapter extends TypeAdapter<ScheDuleCheckInObject> {
  @override
  final int typeId = 1;

  @override
  ScheDuleCheckInObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheDuleCheckInObject(
      id_khkk: fields[0] as int?,
      ma_khkk: fields[1] as String?,
      ten_khkk: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheDuleCheckInObject obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id_khkk)
      ..writeByte(1)
      ..write(obj.ma_khkk)
      ..writeByte(2)
      ..write(obj.ten_khkk);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheDuleCheckInObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheDuleCheckInObjectImpl _$$ScheDuleCheckInObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheDuleCheckInObjectImpl(
      id_khkk: json['id_khkk'] as int?,
      ma_khkk: json['ma_khkk'] as String?,
      ten_khkk: json['ten_khkk'] as String?,
    );

Map<String, dynamic> _$$ScheDuleCheckInObjectImplToJson(
        _$ScheDuleCheckInObjectImpl instance) =>
    <String, dynamic>{
      'id_khkk': instance.id_khkk,
      'ma_khkk': instance.ma_khkk,
      'ten_khkk': instance.ten_khkk,
    };
