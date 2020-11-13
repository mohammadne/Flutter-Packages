// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemeStateDaoAdapter extends TypeAdapter<ThemeStateDao> {
  @override
  final int typeId = 102;

  @override
  ThemeStateDao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThemeStateDao(
      brightnessDao: fields[0] as ThemeBrightnessDao,
      paletteDao: fields[1] as ThemePaletteDao,
    );
  }

  @override
  void write(BinaryWriter writer, ThemeStateDao obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.brightnessDao)
      ..writeByte(1)
      ..write(obj.paletteDao);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeStateDaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
