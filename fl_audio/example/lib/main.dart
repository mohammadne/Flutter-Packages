import 'package:fl_audio/fl_audio.dart';
import 'package:flutter/material.dart';

import 'audio/audio_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _registerAudioService();

  runApp(Application());
}

Future<void> _registerAudioService() async {
  final service = AudioService.instance;
  await service.initialize();
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlAudioWidget(
      child: MaterialApp(
        home: UI(),
      ),
    );
  }
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
