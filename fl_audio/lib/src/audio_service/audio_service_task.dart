// import 'package:audio_service/audio_service.dart';
// import 'package:fl_audio/src/audio_player/audio_player_base.dart';

// class AudioServiceTask extends BackgroundAudioTask {
//   /// This is the duration which specify how long it should save the position
//   Duration _positionInterval = Duration(seconds: 2);
//   AudioPlayerBase _player;

//   int _audioItemIndex;
//   List<AudioItem> _audioItems;

//   /// This position is used for init pos (Sec)
//   int _initPosition;

//   /// This field should be set from onCusttomAction
//   AudioItemSource _audioItemSource;

//   /// This field should be set from onCusttomAction AND sended from _sendIsolateEvent
//   PlayBackOrderState _playBackOrderState;

//   bool get _hasMediaItems => _audioItems.isEmpty;
//   int get _mediaItemsLength => _audioItems.length;
//   bool get _isFirstAudioItem => _audioItemIndex == 0;
//   bool get _isLastAudioItem => _audioItemIndex == _mediaItemsLength - 1;

//   MediaItem _audioItemToMediaItem(AudioItem audioItem) => MediaItem(
//         id: audioItem.id,
//         artUri: audioItem.artUri,
//         title: audioItem.artist,
//         album: audioItem.album,
//         artist: audioItem.artist,
//         duration: audioItem.duration,
//       );

//   AudioItem _mediaItemToAudioItem(MediaItem mediaItem) => AudioItem(
//         id: mediaItem.id,
//         artUri: mediaItem.artUri,
//         title: mediaItem.artist,
//         album: mediaItem.album,
//         artist: mediaItem.artist,
//         duration: mediaItem.duration,
//       );

//   @override
//   Future<void> onStart(Map<String, dynamic> params) async {
//     _player = JustAudio();
//     await _hiveInitial();
//     Stream<void>.periodic(_positionInterval, (_) {
//       print('position is on $_player.position.inSeconds');
//       Hive.box('position').put(0, _player.position.inSeconds);
//     });
//     _player.playerStateStream.listen((state) {
//       state.when(
//         completed: () => _handlePlayerCompletion(),
//         playing: () => _setState(
//           isPlaying: true,
//           processingState: _player.isBuffering
//               ? AudioProcessingState.buffering
//               : AudioProcessingState.ready,
//         ),
//         paused: () => _setState(
//           isPlaying: false,
//           processingState: _player.isBuffering
//               ? AudioProcessingState.buffering
//               : AudioProcessingState.ready,
//         ),
//         stopped: () => _setState(
//           isPlaying: false,
//           processingState: AudioProcessingState.stopped,
//         ),
//         connecting: () => _setState(
//           isPlaying: false,
//           processingState: AudioProcessingState.connecting,
//         ),
//         none: () => _setState(
//           isPlaying: false,
//           processingState: AudioProcessingState.none,
//         ),
//       );
//     });
//     await _handleInitOnStart();
//   }

//   _hiveInitial() async {
//     /// Initializing application dir
//     final appDocDir = await path_provider.getApplicationDocumentsDirectory();

//     /// Hive initialization and registrations
//     Hive.init(appDocDir.path);
//     Hive.registerAdapter<PlayBackOrderState>(PlayBackOrderStateAdapter());

//     /// AudioItemSource
//     final audioItemSourceBox =
//         await Hive.openBox<AudioItemSource>('audio_item_source');
//     _audioItemSource = audioItemSourceBox.get(0) ?? AudioItemSource.Url;

//     /// PlayBackorderState
//     final playBackOrderBox =
//         await Hive.openBox<PlayBackOrderState>('play_back_order_state');
//     _playBackOrderState = playBackOrderBox.get(0) ?? PlayBackOrderState.order;

//     /// AudioItems
//     final audioItemsBox = await Hive.openBox<List<AudioItem>>('audio_items');
//     _audioItems = audioItemsBox.get(0) ?? [];

//     /// AudioItemIndex
//     final audioItemIndexBox = await Hive.openBox<int>('audio_item_index');
//     _audioItemIndex = audioItemIndexBox.get(0) ?? 0;

//     /// Position
//     final initPositionBox = await Hive.openBox<int>('position');
//     _initPosition = initPositionBox.get(0) ?? 0;
//   }

//   _handlePlayerCompletion() async {
//     switch (_playBackOrderState) {
//       case PlayBackOrderState.order:
//         if (_isLastAudioItem) {
//           onPause();
//         } else {
//           _skip(1);
//         }
//         break;
//       case PlayBackOrderState.repeatAll:
//         if (_isLastAudioItem) {
//           onSkipToQueueItem(_audioItems.first.id);
//         } else {
//           _skip(1);
//         }
//         break;
//       case PlayBackOrderState.repeatOne:
//         await onStop();
//         onPlay();
//         break;
//       case PlayBackOrderState.shuffle:
//         int random = Random().nextInt(_mediaItemsLength);
//         onSkipToQueueItem(_audioItems[random].id);
//         break;
//     }
//   }

//   _handleInitOnStart() async {
//     AudioServiceBackground.setQueue(_audioItems
//         .map((AudioItem audioItem) => _audioItemToMediaItem(audioItem))
//         .toList());

//     if (_hasMediaItems) {
//     } else {}
//   }

//   void _sendIsolateEvent(AudioPortToMain audioPortToMain) =>
//       AudioServiceBackground.sendCustomEvent(audioPortToMain);

//   @override
//   Future onCustomAction(_, arguments) async {
//     final args = new Map<String, dynamic>.from(arguments);
//     MainPortToAudio port = MainPortToAudio.fromJson(args);
//     _audioItemSource = port.audioItemSource ?? _audioItemSource;
//     Hive.box('audio_item_source').put(0, _audioItemSource);
//     _playBackOrderState = port.playBackOrderState ?? _playBackOrderState;
//     Hive.box('play_back_order_state').put(0, _playBackOrderState);
//   }

//   @override
//   void onPlay() {
//     _player.play();
//   }

//   @override
//   void onPause() {
//     _player.pause();
//   }

//   @override
//   Future<void> onStop() async {
//     await _player.stop();
//     await super.onStop();
//     await Hive.close();
//   }

//   @override
//   void onClose() => onStop();

//   @override
//   void onSeekTo(Duration position) {
//     _player.seek(position);
//   }

//   @override
//   void onSkipToNext() {
//     switch (_playBackOrderState) {
//       case PlayBackOrderState.shuffle:
//         int random = Random().nextInt(_mediaItemsLength);
//         onSkipToQueueItem(_audioItems[random].id);
//         break;
//       default:
//         if (_isLastAudioItem) {
//           onSkipToQueueItem(_audioItems.first.id);
//         } else {
//           _skip(1);
//         }
//     }
//   }

//   @override
//   void onSkipToPrevious() {
//     switch (_playBackOrderState) {
//       case PlayBackOrderState.shuffle:
//         int random = Random().nextInt(_mediaItemsLength);
//         onSkipToQueueItem(_audioItems[random].id);
//         break;
//       default:
//         if (_isFirstAudioItem) {
//           onSkipToQueueItem(_audioItems.last.id);
//         } else {
//           _skip(-1);
//         }
//     }
//   }

//   @override
//   void onSkipToQueueItem(String mediaId) {}

//   Future<void> _skip(int offset) async {
//     final pos = _audioItemIndex + offset;
//     if (!(pos >= 0 && pos < _mediaItemsLength)) return;
//     _audioItemIndex = pos;
//     //TODO
//     // await _player.stop();
//     MediaItem mediaItem = _audioItemToMediaItem(_audioItems[pos]);
//     AudioServiceBackground.setMediaItem(mediaItem);
//     await _player.setUrl(mediaItem.id);
//     onPlay();
//   }

//   @override
//   Future<void> onUpdateQueue(List<MediaItem> queue) async {
//     AudioServiceBackground.setQueue(queue);
//     _audioItems = queue
//         .map((MediaItem mediaItem) => _mediaItemToAudioItem(mediaItem))
//         .toList();
//     _skip(0);
//   }

//   @override
//   Future<void> onUpdateMediaItem(MediaItem mediaItem) async {}

//   @override
//   void onAddQueueItem(MediaItem mediaItem) {}

//   @override
//   void onAddQueueItemAt(MediaItem mediaItem, int index) {}

//   @override
//   void onFastForward() {
//     _seekRelative(fastForwardInterval);
//   }

//   @override
//   void onRewind() {
//     _seekRelative(-rewindInterval);
//   }

//   Future<void> _seekRelative(Duration offset) async {
//     final pos = _player.position + offset;
//     final mediaItem = AudioService.currentMediaItem;
//     if (pos < Duration.zero) _player.seek(Duration.zero);
//     if (pos > mediaItem.duration) _player.seek(mediaItem.duration);
//     await _player.seek(pos);
//   }

//   @override
//   void onAudioFocusLost(AudioInterruption interruption) {
//     onPause();
//   }

//   @override
//   void onAudioFocusGained(AudioInterruption interruption) {
//     onPlay();
//   }

//   @override
//   void onAudioBecomingNoisy() {
//     onPause();
//   }

//   @override
//   void onPlayFromMediaId(String mediaId) {
//     final reqIndex = AudioService.queue.indexWhere(
//       (mediaItem) => mediaItem.id == mediaId,
//     );
//     _skip(reqIndex - _audioItemIndex);
//   }

//   @override
//   void onSetSpeed(double speed) {
//     _player.setSpeed(speed);
//   }

//   @override
//   void onClick(MediaButton button) {
//     switch (button) {
//       case MediaButton.next:
//         onSkipToNext();
//         break;
//       case MediaButton.previous:
//         onSkipToPrevious();
//         break;
//       case MediaButton.media:
//         if (AudioServiceBackground.state.playing)
//           onPause();
//         else
//           onPlay();
//         break;
//     }
//   }

//   Future<void> _setState({
//     @required bool isPlaying,
//     AudioProcessingState processingState,
//   }) async =>
//       await AudioServiceBackground.setState(
//         controls: _getControls(isPlaying),
//         systemActions: [MediaAction.seekTo],
//         processingState:
//             processingState ?? AudioServiceBackground.state.processingState,
//         playing: isPlaying,
//         position: _player.position,
//         bufferedPosition: _player.bufferedPosition,
//         speed: _player.speed,
//       );

//   List<MediaControl> _getControls(bool isPlaying) {
//     if (isPlaying) {
//       return [
//         skipToPreviousControl,
//         pauseControl,
//         skipToNextControl,
//         stopControl,
//       ];
//     } else {
//       return [
//         skipToPreviousControl,
//         playControl,
//         skipToNextControl,
//         stopControl,
//       ];
//     }
//   }
// }

// MediaControl playControl = MediaControl(
//   androidIcon: 'drawable/ic_action_play_arrow',
//   label: 'Play',
//   action: MediaAction.play,
// );
// MediaControl pauseControl = MediaControl(
//   androidIcon: 'drawable/ic_action_pause',
//   label: 'Pause',
//   action: MediaAction.pause,
// );
// MediaControl skipToNextControl = MediaControl(
//   androidIcon: 'drawable/ic_action_skip_next',
//   label: 'Next',
//   action: MediaAction.skipToNext,
// );
// MediaControl skipToPreviousControl = MediaControl(
//   androidIcon: 'drawable/ic_action_skip_previous',
//   label: 'Previous',
//   action: MediaAction.skipToPrevious,
// );
// MediaControl stopControl = MediaControl(
//   androidIcon: 'drawable/ic_action_stop',
//   label: 'Stop',
//   action: MediaAction.stop,
// );
