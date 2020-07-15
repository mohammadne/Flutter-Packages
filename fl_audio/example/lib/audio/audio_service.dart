import 'package:fl_audio/fl_audio.dart';
import 'package:hive/hive.dart';
import 'dart:async';

import 'package:example/audio/audio_service_base.dart';
import 'package:rxdart/rxdart.dart';

class AudioService implements AudioServiceBase {
  bool _isServiceInitialized = false;

  AudioService._();
  static final AudioService instance = AudioService._();

  /// The prefix of hive items
  final _hivePrefix = 'audio_service';
  final _flAudioStatePositionPrefix = 'fl_audio_state_position';
  final _flAudioItemIndexPrefix = 'fl_audio_item_index';
  final _flAudioOrderPrefix = 'fl_audio_order';
  final _flAudioItemsPrefix = 'fl_audio_items';

  /// Boxes for initialization of items and item index
  /// These boxes are responsible for reminding last items
  Box<Map<String, dynamic>> _flAudioOrderBox;
  Box<int> _flAudioStatePositionBox;
  Box<int> _flAudioItemIndexBox;
  Box<List> _flAudioItemsBox;

  /// initialize boxes and whatever needed for initialization of audio service
  Future<void> initialize() async {
    if (_isServiceInitialized) return;

    _flAudioItemsBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioItemsPrefix');

    _flAudioItemIndexBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioItemIndexPrefix');

    _flAudioOrderBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioOrderPrefix');

    _flAudioStatePositionBox =
        await Hive.openBox('${_hivePrefix}_$_flAudioStatePositionPrefix');

    /// Subscriber for isolate starting to feed it's items
    FlAudio.isStarted.listen((isStarted) {
      if (isStarted) {
        /// Order Initialization
        final order = _flAudioOrderBox.get(0);
        final items = _flAudioItemsBox.get(0);
        final itemIndex = _flAudioItemIndexBox.get(0);

        /// Seeding flAudioOrderSubject
        flAudioOrderSubject = BehaviorSubject.seeded(
          order == null ? FlAudioOrder.order() : FlAudioOrder.fromJson(order),
        );

        /// Send this port to isolate for initialize necessary items
        FlAudio.transmitInitMainToFlAudioPort(
          InitMainToFlAudioPort(
            flAudioOrder: flAudioOrderSubject.value.toJson(),
            flAudioItemIndex: itemIndex ?? 0,
            flAudioitems: items == null
                ? []
                : items.map((item) => item as Map<String, dynamic>),
          ),
        );
      }
    });

    /// Subscriber to save current position in hive
    FlAudio.flAudioStateStream.map((state) => state.position).listen((pos) {
      _flAudioStatePositionBox.put(0, pos.inSeconds);
    });

    _isServiceInitialized = true;
  }

  /// Methods
  static void start() => FlAudio.start();

  static void stop() {
    flAudioOrderSubject.close();
  }

  /// Streams

  static Stream<bool> get isIsolateStarted => FlAudio.isStarted;

  static BehaviorSubject<FlAudioOrder> flAudioOrderSubject;

  static Stream<bool> get isFirstAudioItemStream =>
      Rx.combineLatest2<List<FlAudioItem>, FlAudioItem, bool>(
        FlAudio.flAudioItemsStream,
        FlAudio.flAudioItemStream,
        (items, item) => item == items.first,
      );

  static Stream<bool> get isLastAudioItemStream =>
      Rx.combineLatest2<List<FlAudioItem>, FlAudioItem, bool>(
        FlAudio.flAudioItemsStream,
        FlAudio.flAudioItemStream,
        (items, item) => item == items.last,
      );
}
