import 'package:example/api_bloc/api_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

import 'audio_service/audio_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await _registerAudioService();

  runApp(Application());
}

Future<void> _registerAudioService() async {
  final service = AudioService.instance;
  await service.initialize();
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApiBloc>(
      create: (_) => ApiBloc(),
      child: MaterialApp(
        home: FlAudioWidget(child: UI()),
      ),
    );
  }
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<bool>(
        initialData: false,
        stream: AudioService.isIsolateStarted,
        builder: (_, started) => !started.data
            ? Center(
                child: RaisedButton(
                  child: Text('Start Fl_Audio'),
                  onPressed: FlAudio.start,
                ),
              )
            : BlocBuilder<ApiBloc, ApiState>(
                builder: (_, state) {
                  if (state is ApiLoading)
                    return CircularProgressIndicator();
                  else if (state is ApiError)
                    return Text('Api Error');
                  else if (state is ApiInitial)
                    return Text('Api Initial');
                  else if (state is ApiLoaded) {
                    return FutureBuilder(
                      future: AudioService.updateFlAudioItems(state.items),
                      builder: (_, snapUpdateFlAudioItems) {
                        return StreamBuilder<List<FlAudioItem>>(
                          initialData: state.items,
                          stream: AudioService.flAudioItemsStream,
                          builder: (_, snapFlAudioItems) {
                            final waiting =
                                snapUpdateFlAudioItems.connectionState !=
                                    ConnectionState.done;
                            return Column(
                              children: [
                                if (waiting) ...[
                                  CircularProgressIndicator(),
                                ] else ...[
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          StreamBuilder<bool>(
                                            initialData: true,
                                            stream: AudioService
                                                .isFirstAudioItemStream,
                                            builder: (_, isFirst) => IconButton(
                                              icon: Icon(Icons.skip_previous),
                                              iconSize: 64.0,
                                              onPressed: isFirst.data
                                                  ? null
                                                  : AudioService.skipToPrevious,
                                            ),
                                          ),
                                          StreamBuilder<bool>(
                                            initialData: true,
                                            stream: AudioService
                                                .isLastAudioItemStream,
                                            builder: (_, isLast) => IconButton(
                                              icon: Icon(Icons.skip_next),
                                              iconSize: 64.0,
                                              onPressed: isLast.data
                                                  ? null
                                                  : AudioService.skipToNext,
                                            ),
                                          ),
                                        ],
                                      ),
                                      StreamBuilder(
                                        stream: AudioService.flAudioStateStream,
                                        builder: (_, state) => Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (state.data.playing)
                                              IconButton(
                                                icon: Icon(Icons.pause),
                                                iconSize: 64.0,
                                                onPressed: AudioService.pause,
                                              )
                                            else
                                              IconButton(
                                                icon: Icon(Icons.play_arrow),
                                                iconSize: 64.0,
                                                onPressed: AudioService.play,
                                              ),
                                            IconButton(
                                              icon: Icon(Icons.stop),
                                              iconSize: 64.0,
                                              onPressed: AudioService.stop,
                                            ),
                                          ],
                                        ),
                                      ),
                                      // StreamBuilder<FlAudioItem>(
                                      //   stream: Rx.combineLatest2(streamA, streamB, (a, b) => null),
                                      //       AudioService.flAudioItemStream,
                                      //   builder: (_, item) =>
                                      //       PositionIndicator(
                                      //     state,
                                      //     item.data,
                                      //     _dragPositionSubject,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                                IgnorePointer(
                                  ignoring: waiting,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: state.items.length,
                                    itemBuilder: (_, index) {
                                      return InkWell(
                                        onTap: () =>
                                            AudioService.playFlAudioItem(
                                          state.items[index].id,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16),
                                          child: Text(state.items[index].id),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  }
                },
              ),
      ),
    );
  }
}
