import 'package:example/audio_service/audio_service.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class MediaSeekBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PositionIndicator>(
      stream: AudioService.positionIndicatorStream,
      builder: (_, snap) {
        if (snap.data == null || snap.data.duration == -1)
          return CircularProgressIndicator();
        final positionIndicator = snap.data;
        return Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Container(
                        height: 1,
                        width: (MediaQuery.of(context).size.width - 48) *
                            (positionIndicator.bufferedPosition /
                                positionIndicator.duration),
                        color: Colors.red,
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                ),
                Slider(
                  min: 0.0,
                  max: positionIndicator.duration,
                  value: math.max(
                    0.0,
                    math.min(
                      positionIndicator.position,
                      positionIndicator.duration,
                    ),
                  ),
                  onChanged: (value) {
                    AudioService.dragPositionSubject.add(value);
                  },
                  onChangeEnd: (value) async {
                    await AudioService.seek(
                      Duration(milliseconds: value.toInt()),
                    );
                    Future.delayed(
                      Duration(milliseconds: 200),
                      // Due to a delay in platform channel communication, there is
                      // a brief moment after releasing the Slider thumb before the
                      // new position is broadcast from the platform side. This
                      // hack is to hold onto seekPos until the next state update
                      // comes through.
                      () => AudioService.dragPositionSubject.add(null),
                    );
                  },
                ),
              ],
            ),
            Text("position: ${positionIndicator.position}"),
            Text(
              "buffered_position: ${positionIndicator.bufferedPosition}",
            ),
            Text("duration: ${positionIndicator.duration}"),
          ],
        );
      },
    );
  }
}
