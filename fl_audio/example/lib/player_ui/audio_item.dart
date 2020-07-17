import 'package:example/audio_service/audio_service.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';

class AudioItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FlAudioItem>(
      stream: AudioService.flAudioItemStream,
      builder: (_, snap) => Container(
        child: Column(
          children: [
            Image.network(snap.data?.artUri ?? '', fit: BoxFit.fitWidth),
            Text(snap.data?.artist ?? ''),
            Text(snap.data?.album ?? ''),
            Text(snap.data?.title ?? ''),
          ],
        ),
      ),
    );
  }
}
