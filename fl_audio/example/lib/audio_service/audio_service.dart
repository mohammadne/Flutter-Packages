import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'dart:async';

import 'package:rxdart/rxdart.dart';

import 'audio_service_base.dart';

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

        /// Seeding dragPositionSubject
        dragPositionSubject = BehaviorSubject.seeded(null);

        /// Send this port to isolate for initialize necessary items
        FlAudio.transmitInitMainToFlAudioPort(
          InitMainToFlAudioPort(
            flAudioOrder: flAudioOrderSubject.value,
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
  static Future<bool> start() => FlAudio.start();

  static Future<void> play() => FlAudio.play();
  static Future<void> playFlAudioItem(String id) => FlAudio.playFlAudioItem(id);
  static Future<void> playWithInitialSeek(Duration pos) =>
      FlAudio.playWithInitialSeek(pos);

  static Future<void> skipToNext() => FlAudio.skipToNext();
  static Future<void> skipToPrevious() => FlAudio.skipToPrevious();

  static Future<void> seek(Duration pos) => FlAudio.seek(pos);
  static Future<void> setSpeed(double speed) => FlAudio.setSpeed(speed);

  static Future<void> pause() => FlAudio.pause();

  static Future<void> updateFlAudioItems(List<FlAudioItem> items) =>
      FlAudio.updateQueue(items);

  static Future<void> addFlAudioItem(FlAudioItem item) =>
      FlAudio.addFlAudioItem(item);

  static Future<void> insertFlAudioItemAt(FlAudioItem item, int index) =>
      FlAudio.insertFlAudioItemAt(item, index);

  static void stop() {
    FlAudio.stop();
    dragPositionSubject.close();
    flAudioOrderSubject.close();
  }

  static void changeFlAudioOrder(FlAudioOrder order) {
    if (flAudioOrderSubject.value != order)
      FlAudio.transmitMainToFlAudioPort(
        MainToFlAudioPort(flAudioOrder: order),
      );
  }

  /// Streams

  static Stream<bool> get isIsolateStarted => FlAudio.isStarted;

  static BehaviorSubject<FlAudioOrder> flAudioOrderSubject;

  /// Tracks the position while the user drags the seek bar.
  static BehaviorSubject<double> dragPositionSubject;

  static Stream<bool> get isFirstAudioItemStream =>
      Rx.combineLatest2<List<FlAudioItem>, FlAudioItem, bool>(
        FlAudio.flAudioItemsStream,
        FlAudio.flAudioItemStream,
        (items, item) => item == items?.first ?? true,
      );

  static Stream<bool> get isLastAudioItemStream =>
      Rx.combineLatest2<List<FlAudioItem>, FlAudioItem, bool>(
        FlAudio.flAudioItemsStream,
        FlAudio.flAudioItemStream,
        (items, item) => item == items?.last ?? true,
      );

  static Stream<bool> get isWaitingStream => FlAudio.flAudioStateStream.map(
        (state) =>
            state?.processingState?.maybeWhen(
              connecting: () => true,
              skippingToNext: () => true,
              skippingToQueueItem: () => true,
              skippingToPervious: () => true,
              orElse: () => false,
            ) ??
            true,
      );

  static Stream<PositionIndicator> get positionIndicatorStream =>
      Rx.combineLatest3<FlAudioState, FlAudioItem, double, PositionIndicator>(
        FlAudio.flAudioStateStream,
        FlAudio.flAudioItemStream,
        dragPositionSubject.stream,
        (flAudioState, flAudioItem, dragPosition) => PositionIndicator(
          bufferedPosition:
              flAudioState.bufferedPosition.inMilliseconds.toDouble(),
          position:
              dragPosition ?? flAudioState.position.inMilliseconds.toDouble(),
          duration: flAudioItem.duration?.inMilliseconds?.toDouble() ?? -1,
        ),
      );

  static Stream<FlAudioState> get flAudioStateStream =>
      FlAudio.flAudioStateStream;

  static Stream<FlAudioItem> get flAudioItemStream => FlAudio.flAudioItemStream;

  static Stream<List<FlAudioItem>> get flAudioItemsStream =>
      FlAudio.flAudioItemsStream;
}

class PositionIndicator {
  PositionIndicator({
    @required this.bufferedPosition,
    @required this.position,
    @required this.duration,
  });
  final double bufferedPosition;
  final double position;
  final double duration;

  @override
  int get hashCode => position.hashCode;

  @override
  bool operator ==(dynamic other) =>
      other is PositionIndicator &&
      other.bufferedPosition == bufferedPosition &&
      other.position == position &&
      other.duration == duration;
}
