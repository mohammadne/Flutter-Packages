import 'package:audio_service/audio_service.dart';
import 'package:rxdart/rxdart.dart';

import 'fl_audio_models/state/fl_audio_processing_state/fl_audio_processing_state.dart';
import 'port/fl_audio_to_isolate/fl_audio_to_isolate_port.dart';
import 'port/init_fl_audio_to_isolate/init_fl_audio_to_isolate_port.dart';
import 'port/init_main_to_fl_audio/init_main_to_fl_audio_port.dart';
import 'fl_audio_models/state/fl_audio_state/fl_audio_state.dart';
import 'port/fl_audio_to_main/fl_audio_to_main_port.dart';
import 'port/main_to_fl_audio/main_to_fl_audio_port.dart';
import 'audio_service/audio_service_isolate.dart';
import 'fl_audio_models/item/fl_audio_item.dart';

// flutter pub pub run build_runner watch --delete-conflicting-outputs
// flutter packages pub run build_runner build

void _runAudioServiceIsolate() async {
  AudioServiceBackground.run(() => AudioServiceIsolate());
}

abstract class FlAudio {
  // Methods

  static Future<bool> start() async {
    final started = await AudioService.start(
      backgroundTaskEntrypoint: _runAudioServiceIsolate,
      androidNotificationChannelName: 'FlAudio',
      androidNotificationColor: 0xFF2196f3,
      androidNotificationIcon: 'mipmap/ic_launcher',
      androidEnableQueue: true,
    );
    isStarted.add(started);
    return started;
  }

  static Future<void> play() => AudioService.play();
  static Future<void> playWithInitialSeek(Duration position) async {
    await AudioService.play();
    await AudioService.seekTo(position);
  }

  static Future<void> playFlAudioItem(String id) =>
      AudioService.playFromMediaId(id);

  static Future<void> pause() => AudioService.pause();
  static Future<void> stop() async {
    await AudioService.stop();
    isStarted.add(false);
  }

  static Future<void> skipToNext() => AudioService.skipToNext();
  static Future<void> skipToPrevious() => AudioService.skipToPrevious();
  static Future<void> seek(Duration position) => AudioService.seekTo(position);
  static Future<void> setSpeed(double speed) => AudioService.setSpeed(speed);

  static Future<void> updateQueue(List<FlAudioItem> items) =>
      AudioService.updateQueue(
        items.map((item) => _mediaItem(item)).toList(),
      );

  static Future<void> addFlAudioItem(FlAudioItem item) =>
      AudioService.addQueueItem(_mediaItem(item));

  static Future<void> insertFlAudioItemAt(FlAudioItem item, int index) =>
      AudioService.addQueueItemAt(_mediaItem(item), index);

  static Future<void> transmitInitMainToFlAudioPort(
          InitMainToFlAudioPort port) =>
      AudioService.customAction(
        'initial',
        InitFlAudioToIsolatePort(
          mediaItemIndex: port.flAudioItemIndex,
          flAudioOrder: port.flAudioOrder,
          mediaItems: port.flAudioitems.map(_mediaItem).toList(),
        ).toJson(),
      );

  static Future<void> transmitMainToFlAudioPort(MainToFlAudioPort port) =>
      AudioService.customAction(
        'normal',
        FlAudioToIsolatePort(
          flAudioOrder: port.flAudioOrder,
        ).toJson(),
      );

  // Streams
  static BehaviorSubject<bool> isStarted = BehaviorSubject.seeded(false);

  static Stream<FlAudioToMainPort> get recieverAudioToMainPort =>
      Stream.castFrom<dynamic, FlAudioToMainPort>(
        AudioService.customEventStream,
      );

  static Stream<FlAudioState> get flAudioStateStream =>
      AudioService.playbackStateStream.map(
        (val) => val == null ? null : _flAudioState(val),
      );

  static Stream<FlAudioItem> get flAudioItemStream =>
      AudioService.currentMediaItemStream.map(
        (val) => val == null ? null : _flAudioItem(val),
      );

  static Stream<List<FlAudioItem>> get flAudioItemsStream =>
      AudioService.queueStream.map((mediaItems) => mediaItems
          .map((val) => val == null ? null : _flAudioItem(val))
          .toList());

  // Utils
  static FlAudioState _flAudioState(PlaybackState playbackState) =>
      FlAudioState(
        processingState: _flAudioProcessingState(playbackState.processingState),
        bufferedPosition: playbackState.bufferedPosition,
        position: playbackState.currentPosition,
        updateTime: playbackState.updateTime,
        playing: playbackState.playing,
        speed: playbackState.speed,
      );

  static FlAudioItem _flAudioItem(MediaItem mediaItem) => FlAudioItem(
        id: mediaItem.id,
        artUri: mediaItem.artUri,
        title: mediaItem.artist,
        album: mediaItem.album,
        artist: mediaItem.artist,
        duration: mediaItem.duration,
      );

  static MediaItem _mediaItem(FlAudioItem audioItem) => MediaItem(
        id: audioItem.id,
        artUri: audioItem.artUri,
        title: audioItem.artist,
        album: audioItem.album,
        artist: audioItem.artist,
        duration: audioItem.duration,
      );

  static FlAudioProcessingState _flAudioProcessingState(state) {
    switch (state) {
      case AudioProcessingState.connecting:
        return FlAudioProcessingState.connecting();
      case AudioProcessingState.skippingToNext:
        return FlAudioProcessingState.skippingToNext();
      case AudioProcessingState.skippingToPrevious:
        return FlAudioProcessingState.skippingToPervious();
      case AudioProcessingState.skippingToQueueItem:
        return FlAudioProcessingState.skippingToQueueItem();
      case AudioProcessingState.ready:
        return FlAudioProcessingState.ready();
      case AudioProcessingState.buffering:
        return FlAudioProcessingState.buffering();
      case AudioProcessingState.fastForwarding:
        return FlAudioProcessingState.fastForwarding();
      case AudioProcessingState.rewinding:
        return FlAudioProcessingState.rewinding();
      case AudioProcessingState.completed:
        return FlAudioProcessingState.completed();
      case AudioProcessingState.stopped:
        return FlAudioProcessingState.stopped();
      case AudioProcessingState.error:
        return FlAudioProcessingState.error();
      default:
        return FlAudioProcessingState.none();
    }
  }
}
