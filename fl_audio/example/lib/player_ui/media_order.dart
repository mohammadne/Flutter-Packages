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
              snap.data?.when<String>(
                    order: () => 'Order',
                    repeatAll: () => 'Repeat All',
                    repeatOne: () => 'Repeat One',
                    shuffle: () => 'Shuffle',
                  ) ??
                  '',
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: RaisedButton(
                child: Text('order'),
                onPressed: () => AudioService.changeFlAudioOrder(
                  FlAudioOrder.order(),
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                child: Text('repeat All'),
                onPressed: () => AudioService.changeFlAudioOrder(
                  FlAudioOrder.repeatAll(),
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                child: Text('repeat One'),
                onPressed: () => AudioService.changeFlAudioOrder(
                  FlAudioOrder.repeatOne(),
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                child: Text('shuffle'),
                onPressed: () => AudioService.changeFlAudioOrder(
                  FlAudioOrder.shuffle(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
