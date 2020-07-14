import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_audio_item.freezed.dart';
part 'fl_audio_item.g.dart';

@freezed
abstract class FlAudioItem with _$FlAudioItem {
  const factory FlAudioItem({
    @required String id,
    @required String album,
    @required String artist,
    @required String title,
    @required String artUri,
    @required Duration duration,
  }) = Fl_PlayerState;

  factory FlAudioItem.fromJson(Map<String, dynamic> json) =>
      _$FlAudioItemFromJson(json);
}
