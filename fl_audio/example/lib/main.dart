import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:hive/hive.dart';

import 'audio/audio_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
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
    return MaterialApp(
      home: FlAudioWidget(child: UI()),
    );
  }
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<bool>(
        initialData: false,
        stream: AudioService.isIsolateStarted,
        builder: (_, started) => !started.data
            ? Center(
                child: RaisedButton(
                  child: Text('Start Fl_Audio'),
                  onPressed: FlAudio.start,
                ),
              )
            : Placeholder(
                fallbackHeight: 200,
                fallbackWidth: 200,
                color: Colors.red,
              ),
      ),
    );
  }
}
