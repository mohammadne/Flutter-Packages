import 'package:hive/hive.dart';

part 'fl_audio_order.g.dart';

@HiveType(typeId: 100)
enum FlAudioOrder {
  @HiveField(0)
  order,
  @HiveField(1)
  repeatAll,
  @HiveField(2)
  repeatOne,
  @HiveField(3)
  shuffle,
}
