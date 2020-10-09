import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_audio_order.freezed.dart';
part 'fl_audio_order.g.dart';

@freezed
abstract class FlAudioOrder with _$FlAudioOrder {
  const factory FlAudioOrder.order() = _Order;
  const factory FlAudioOrder.repeatAll() = _RepeatAll;
  const factory FlAudioOrder.repeatOne() = _RepeatOne;
  const factory FlAudioOrder.shuffle() = _Shuffle;

  factory FlAudioOrder.fromJson(Map<String, dynamic> json) =>
      _$FlAudioOrderFromJson(json);
}
