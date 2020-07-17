import 'package:example/player_ui/media_play_pause.dart';
import 'package:example/player_ui/media_seek_bar.dart';
import 'package:example/player_ui/media_skipper.dart';
import 'package:example/player_ui/play_list.dart';
import 'package:flutter/material.dart';

import '../audio_service/audio_service.dart';
import 'audio_item.dart';
import 'media_order.dart';
import 'media_speed_bar.dart';

class PlayerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: true,
      stream: AudioService.isWaitingStream,
      builder: (_, isWaitingSnap) {
        final waiting = isWaitingSnap.data ?? false;
        if (waiting) return Center(child: CircularProgressIndicator());
        return ListView(
          shrinkWrap: true,
          children: [
            MediaSkipper(),
            _CustomDivider(),
            MediaPlayPause(),
            _CustomDivider(),
            MediaSeekBar(),
            _CustomDivider(),
            MediaSpeedBar(),
            _CustomDivider(),
            MediaOrder(),
            _CustomDivider(),
            AudioItem(),
            _CustomDivider(),
            IgnorePointer(
              ignoring: waiting,
              child: PlayList(),
            ),
          ],
        );
      },
    );
  }
}

class _CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      height: 2,
      width: double.infinity,
      color: Colors.red,
    );
  }
}
