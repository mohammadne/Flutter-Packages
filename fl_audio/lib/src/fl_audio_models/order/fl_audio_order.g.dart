part of 'fl_audio_order.dart';

class FlAudioOrderAdapter extends TypeAdapter<FlAudioOrder> {
  @override
  final typeId = 100;

  @override
  FlAudioOrder read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FlAudioOrder.order;
      case 1:
        return FlAudioOrder.repeatAll;
      case 2:
        return FlAudioOrder.repeatOne;
      case 3:
        return FlAudioOrder.shuffle;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, FlAudioOrder obj) {
    switch (obj) {
      case FlAudioOrder.order:
        writer.writeByte(0);
        break;
      case FlAudioOrder.repeatAll:
        writer.writeByte(1);
        break;
      case FlAudioOrder.repeatOne:
        writer.writeByte(2);
        break;
      case FlAudioOrder.shuffle:
        writer.writeByte(3);
        break;
    }
  }
}
