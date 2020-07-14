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

  Box<Map<String, dynamic>> _flAudioItemsBox;
  Box<int> _flAudioItemIndexBox;

  Future<void> initialize() async {
    if (_initCompleter != null) return _initCompleter.future;
    _initCompleter = Completer<void>();

    _flAudioItemsBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioItemsPrefix');
    _flAudioItemIndexBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioItemIndex');

    return _initCompleter.future;
  }
}
