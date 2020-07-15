import 'package:fl_audio/fl_audio.dart';
import 'package:hive/hive.dart';
import 'dart:async';

import 'package:example/audio/audio_service_base.dart';

class AudioService implements AudioServiceBase {
  Completer<void> _initCompleter;

  AudioService._();
  static final AudioService instance = AudioService._();

  /// The prefix of hive items
  final _hivePrefix = 'audio_service';
  final _flAudioItemsPrefix = 'fl_audio_items';
  final _flAudioItemIndex = 'fl_audio_item_index';

  /// Boxes for initialization of items and item index
  Box<Map<String, dynamic>> _flAudioItemsBox;
  Box<int> _flAudioItemIndexBox;

  /// initialize boxes and whatever needed for initialization of audio service
  Future<void> initialize() async {
    if (_initCompleter != null) return _initCompleter.future;
    _initCompleter = Completer<void>();

    _flAudioItemsBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioItemsPrefix');
    _flAudioItemIndexBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioItemIndex');

    FlAudio.isStarted.listen((isStarted) {
      if (isStarted) {
        //TODO: get init position
        //TODO: get order

        //TODO: send items
        //TODO: send item index
      }
    });

    return _initCompleter.future;
  }


}
