import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';

import '../fl_audio.dart';

class FlAudioWidget extends StatefulWidget {
  const FlAudioWidget({@required this.child});
  final Widget child;

  @override
  _FlAudioWidgetState createState() => _FlAudioWidgetState();
}

class _FlAudioWidgetState extends State<FlAudioWidget> {
  @override
  void initState() {
    super.initState();
    FlAudio.start();
  }

  @override
  Widget build(BuildContext context) => AudioServiceWidget(child: widget.child);
}
