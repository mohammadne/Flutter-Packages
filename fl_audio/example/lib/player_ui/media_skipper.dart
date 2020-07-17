import 'package:example/audio_service/audio_service.dart';
import 'package:flutter/material.dart';

class MediaSkipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.fast_rewind),
          iconSize: 64.0,
          onPressed: AudioService.fastRewind,
        ),
        StreamBuilder<bool>(
          initialData: true,
          stream: AudioService.isFirstAudioItemStream,
          builder: (_, isFirst) => IconButton(
            icon: Icon(Icons.skip_previous),
            iconSize: 64.0,
            onPressed:
                isFirst?.data ?? true ? null : AudioService.skipToPrevious,
          ),
        ),
        StreamBuilder<bool>(
          initialData: true,
          stream: AudioService.isLastAudioItemStream,
          builder: (_, isLast) => IconButton(
            icon: Icon(Icons.skip_next),
            iconSize: 64.0,
            onPressed: isLast?.data ?? true ? null : AudioService.skipToNext,
          ),
        ),
        IconButton(
          icon: Icon(Icons.fast_forward),
          iconSize: 64.0,
          onPressed: AudioService.fastForward,
        ),
      ],
    );
  }
}
