// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_palette_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemePaletteDaoAdapter extends TypeAdapter<ThemePaletteDao> {
  @override
  final int typeId = 1;

  @override
  ThemePaletteDao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThemePaletteDao(
      scheme: (fields[0] as Map)?.cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ThemePaletteDao obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.scheme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemePaletteDaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
