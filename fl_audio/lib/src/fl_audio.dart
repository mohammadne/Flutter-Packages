import 'package:audio_service/audio_service.dart';

import 'audio_service/audio_service_isolate.dart';

// flutter pub pub run build_runner watch --delete-conflicting-outputs
// flutter packages pub run build_runner build

void _runAudioServiceIsolate() async {
  AudioServiceBackground.run(() => AudioServiceIsolate());
}

abstract class FlAudio {
  // Methods
  static Future<bool> start() => AudioService.start(
        backgroundTaskEntrypoint: _runAudioServiceIsolate,
        androidNotificationChannelName: 'FlAudio',
        androidNotificationColor: 0xFF2196f3,
        androidNotificationIcon: 'mipmap/ic_launcher',
        androidEnableQueue: true,
      );

  static Future<void> play() => AudioService.play();
  static Future<void> playAudioItem(String id) =>
      AudioService.playFromMediaId(id);

  static Future<void> pause() => AudioService.pause();
  static Future<void> stop() => AudioService.stop();
  static Future<void> skipToNext() => AudioService.skipToNext();
  static Future<void> skipToPrevious() => AudioService.skipToPrevious();
  static Future<void> seek(Duration position) => AudioService.seekTo(position);
  static Future<void> setSpeed(double speed) => AudioService.setSpeed(speed);
}
