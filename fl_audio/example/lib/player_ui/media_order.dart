import 'package:example/audio_service/audio_service.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';

class MediaOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: StreamBuilder<FlAudioOrder>(
            stream: AudioService.flAudioOrderSubject.stream,
            builder: (_, snap) => Text(
              snap.data.when<String>(
                order: () => 'Ordre',
                repeatAll: () => 'repeatAll',
                repeatOne: () => 'repeatOne',
                shuffle: () => 'shuffle',
              ),
            ),
          ),
        ),
        Row(
          children: [
            RaisedButton(
              child: Text('order'),
              onPressed: () => AudioService.changeFlAudioOrder(
                FlAudioOrder.order(),
              ),
            ),
            RaisedButton(
              child: Text('repeatAll'),
              onPressed: () => AudioService.changeFlAudioOrder(
                FlAudioOrder.repeatAll(),
              ),
            ),
            RaisedButton(
              child: Text('repeatOne'),
              onPressed: () => AudioService.changeFlAudioOrder(
                FlAudioOrder.repeatOne(),
              ),
            ),
            RaisedButton(
              child: Text('shuffle'),
              onPressed: () => AudioService.changeFlAudioOrder(
                FlAudioOrder.shuffle(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
