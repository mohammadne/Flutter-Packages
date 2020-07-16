import 'dart:math' as math;

import 'package:example/audio_service/audio_service_base.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';

import 'audio_service/audio_service.dart';

class PlayerUI extends StatelessWidget {
  const PlayerUI(this.items);
  final List<FlAudioItem> items;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: true,
      stream: AudioService.isWaitingStream,
      builder: (_, isWaitingSnap) {
        final waiting = isWaitingSnap.data ?? false;
        return Column(
          children: [
            if (waiting)
              Center(child: CircularProgressIndicator())
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StreamBuilder<bool>(
                        initialData: true,
                        stream: AudioService.isFirstAudioItemStream,
                        builder: (_, isFirst) => IconButton(
                          icon: Icon(Icons.skip_previous),
                          iconSize: 64.0,
                          onPressed:
                              isFirst.data ? null : AudioService.skipToPrevious,
                        ),
                      ),
                      StreamBuilder<bool>(
                        initialData: true,
                        stream: AudioService.isLastAudioItemStream,
                        builder: (_, isLast) => IconButton(
                          icon: Icon(Icons.skip_next),
                          iconSize: 64.0,
                          onPressed:
                              isLast.data ? null : AudioService.skipToNext,
                        ),
                      ),
                    ],
                  ),
                  StreamBuilder<FlAudioState>(
                    stream: AudioService.flAudioStateStream,
                    builder: (_, state) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (state.data?.playing ?? false)
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
                  StreamBuilder<PositionIndicator>(
                    stream: AudioService.positionIndicatorStream,
                    builder: (_, snap) {
                      if (snap.data == null || snap.data.duration == -1)
                        return CircularProgressIndicator();
                      final positionIndicator = snap.data;
                      double seekPos;
                      return Column(
                        children: <Widget>[
                          Slider(
                            min: 0.0,
                            max: positionIndicator.duration,
                            value: seekPos ??
                                math.max(
                                  0.0,
                                  math.min(
                                    positionIndicator.position,
                                    positionIndicator.duration,
                                  ),
                                ),
                            onChanged: (value) {
                              AudioService.dragPositionSubject.add(value);
                            },
                            onChangeEnd: (value) {
                              AudioService.seek(
                                Duration(milliseconds: value.toInt()),
                              );
                              seekPos = value;
                              AudioService.dragPositionSubject.add(null);
                            },
                          ),
                          Text("position: ${positionIndicator.position}"),
                          Text("duration: ${positionIndicator.duration}"),
                        ],
                      );
                    },
                  ),
                ],
              ),
            IgnorePointer(
              ignoring: waiting,
              child: StreamBuilder<List<FlAudioItem>>(
                initialData: items,
                stream: AudioService.flAudioItemsStream,
                builder: (_, snap) {
                  final List<FlAudioItem> flAudioItems = snap.data ?? items;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: flAudioItems.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () => AudioService.playFlAudioItem(
                          flAudioItems[index].id,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(flAudioItems[index].id),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
