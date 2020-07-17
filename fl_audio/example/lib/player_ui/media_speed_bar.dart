import 'package:example/audio_service/audio_service.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class MediaSpeedBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: AudioService.speedStream,
      builder: (_, snap) {
        final val = math.max(0.0, math.min(snap.data ?? 1.0, 2.0));
        return Column(
          children: [
            Slider(
              min: 0.5,
              max: 1.5,
              divisions: 4,
              value: val,
              onChanged: (value) => AudioService.setSpeed(value),
            ),
            Text('current speed: $val')
          ],
        );
      },
    );
  }
}
