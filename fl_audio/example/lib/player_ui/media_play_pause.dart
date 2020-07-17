import 'package:example/audio_service/audio_service.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';

class MediaPlayPause extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FlAudioState>(
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
    );
  }
}
