// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CheckInObjectAdapter extends TypeAdapter<CheckInObject> {
  @override
  final int typeId = 1;

  @override
  CheckInObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CheckInObject(
      ma_ts: fields[0] as String?,
      ten_ts: fields[1] as String?,
      nam_sx: fields[2] as String?,
      hang_sx: fields[3] as String?,
      nuoc_ts: fields[4] as String?,
      thong_so_kt: fields[5] as String?,
      ten_bp: fields[6] as String?,
      ten_lts: fields[7] as String?,
      so_ct: fields[8] as String?,
      str_ngay_ct: fields[9] as String?,
      so_luong: fields[10] as int?,
      ghi_chu: fields[11] as String?,
      str_ngay_bdsd: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CheckInObject obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.ma_ts)
      ..writeByte(1)
      ..write(obj.ten_ts)
      ..writeByte(2)
      ..write(obj.nam_sx)
      ..writeByte(3)
      ..write(obj.hang_sx)
      ..writeByte(4)
      ..write(obj.nuoc_ts)
      ..writeByte(5)
      ..write(obj.thong_so_kt)
      ..writeByte(6)
      ..write(obj.ten_bp)
      ..writeByte(7)
      ..write(obj.ten_lts)
      ..writeByte(8)
      ..write(obj.so_ct)
      ..writeByte(9)
      ..write(obj.str_ngay_ct)
      ..writeByte(10)
      ..write(obj.so_luong)
      ..writeByte(11)
      ..write(obj.ghi_chu)
      ..writeByte(12)
      ..write(obj.str_ngay_bdsd);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckInObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckInObjectImpl _$$CheckInObjectImplFromJson(Map<String, dynamic> json) =>
    _$CheckInObjectImpl(
      ma_ts: json['ma_ts'] as String?,
      ten_ts: json['ten_ts'] as String?,
      nam_sx: json['nam_sx'] as String?,
      hang_sx: json['hang_sx'] as String?,
      nuoc_ts: json['nuoc_ts'] as String?,
      thong_so_kt: json['thong_so_kt'] as String?,
      ten_bp: json['ten_bp'] as String?,
      ten_lts: json['ten_lts'] as String?,
      so_ct: json['so_ct'] as String?,
      str_ngay_ct: json['str_ngay_ct'] as String?,
      so_luong: json['so_luong'] as int?,
      ghi_chu: json['ghi_chu'] as String?,
      str_ngay_bdsd: json['str_ngay_bdsd'] as String?,
    );

Map<String, dynamic> _$$CheckInObjectImplToJson(_$CheckInObjectImpl instance) =>
    <String, dynamic>{
      'ma_ts': instance.ma_ts,
      'ten_ts': instance.ten_ts,
      'nam_sx': instance.nam_sx,
      'hang_sx': instance.hang_sx,
      'nuoc_ts': instance.nuoc_ts,
      'thong_so_kt': instance.thong_so_kt,
      'ten_bp': instance.ten_bp,
      'ten_lts': instance.ten_lts,
      'so_ct': instance.so_ct,
      'str_ngay_ct': instance.str_ngay_ct,
      'so_luong': instance.so_luong,
      'ghi_chu': instance.ghi_chu,
      'str_ngay_bdsd': instance.str_ngay_bdsd,
    };
