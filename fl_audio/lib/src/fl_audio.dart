import 'package:audio_service/audio_service.dart';
import 'package:rxdart/rxdart.dart';

import 'audio_service/audio_service_isolate.dart';
import 'fl_audio_models/item/fl_audio_item.dart';
import 'fl_audio_models/state/fl_audio_processing_state/fl_audio_processing_state.dart';
import 'fl_audio_models/state/fl_audio_state/fl_audio_state.dart';

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

  static Future<void> playAudioItem(String id) =>
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

  // Streams
  static BehaviorSubject<bool> isStarted = BehaviorSubject.seeded(false);

  static Stream<FlAudioState> get playerServiceStream =>
      AudioService.playbackStateStream.map(_flAudioState);

  // static Stream<AudioPortToMain> get isolateEventStream =>
  //     Stream.castFrom<dynamic, AudioPortToMain>(AudioService.customEventStream);

  static Stream<FlAudioItem> get flAudioItemStream =>
      AudioService.currentMediaItemStream.map(_flAudioItem);

  static Stream<List<FlAudioItem>> get flAudioItemsStream =>
      AudioService.queueStream
          .map((mediaItems) => mediaItems.map(_flAudioItem).toList());

  static Stream<bool> get isFirstAudioItemStream =>
      Rx.combineLatest2<List<FlAudioItem>, FlAudioItem, bool>(
        flAudioItemsStream,
        flAudioItemStream,
        (items, item) => item == items.first,
      );

  static Stream<bool> get isLastAudioItemStream =>
      Rx.combineLatest2<List<FlAudioItem>, FlAudioItem, bool>(
        flAudioItemsStream,
        flAudioItemStream,
        (items, item) => item == items.last,
      );

  // Utils
  static FlAudioState _flAudioState(PlaybackState playbackState) =>
      FlAudioState(
        processingState: _flAudioProcessingState(playbackState.processingState),
        playing: playbackState.playing,
        speed: playbackState.speed,
        position: playbackState.currentPosition,
        updateTime: playbackState.updateTime,
        bufferedPosition: playbackState.bufferedPosition,
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
