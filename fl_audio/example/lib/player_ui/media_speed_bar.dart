import 'package:example/audio_service/audio_service.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class MediaSpeedBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: AudioService.speedStream,
      builder: (_, snap) {
        return Slider(
          min: 0.0,
          max: 1.0,
          value: math.max(
            0.0,
            math.min(AudioService.dragSpeedSubject.value ?? snap.data, 1.0),
          ),
          onChanged: (value) {
            AudioService.dragSpeedSubject.add(value);
          },
          onChangeEnd: (value) async {
            await AudioService.setSpeed(value);
            Future.delayed(
              Duration(milliseconds: 200),
              // Due to a delay in platform channel communication, there is
              // a brief moment after releasing the Slider thumb before the
              // new position is broadcast from the platform side. This
              // hack is to hold onto seekPos until the next state update
              // comes through.
              () => AudioService.dragSpeedSubject.add(null),
            );
          },
        );
      },
    );
  }
}
