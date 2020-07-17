import 'package:example/audio_service/audio_service.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<FlAudioItem>>(
      stream: AudioService.flAudioItemsStream,
      builder: (_, snap) {
        final List<FlAudioItem> flAudioItems = snap.data ?? [];
        return ListView.builder(
          padding: EdgeInsets.zero,
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
    );
  }
}
