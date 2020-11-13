// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_brightness_dao.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemeBrightnessDaoAdapter extends TypeAdapter<ThemeBrightnessDao> {
  @override
  final int typeId = 100;

  @override
  ThemeBrightnessDao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThemeBrightnessDao(
      brightness: (fields[0] as Map)?.cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ThemeBrightnessDao obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.brightness);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeBrightnessDaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
