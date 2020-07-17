import 'package:example/player_ui/media_play_pause.dart';
import 'package:example/player_ui/media_seek_bar.dart';
import 'package:example/player_ui/media_skipper.dart';
import 'package:example/player_ui/play_list.dart';
import 'package:flutter/material.dart';

import '../audio_service/audio_service.dart';

class PlayerUI extends StatelessWidget {
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
                  MediaSkipper(),
                  MediaPlayPause(),
                  MediaSeekBar(),
                  //MediaSpeedBar()
                  //MediaOrder()
                ],
              ),
            Divider(),
            IgnorePointer(
              ignoring: waiting,
              child: Container(
                height: 300,
                child: PlayList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
