import 'package:example/api_bloc/api_bloc.dart';
import 'package:example/player_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:hive/hive.dart';

import 'audio_service/audio_service.dart';

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
    return BlocProvider<ApiBloc>(
      create: (_) => ApiBloc(),
      child: MaterialApp(
        home: FlAudioWidget(child: UI()),
      ),
    );
  }
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getItems = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          child: Text('Play playlist 1'),
          onPressed: () =>
              BlocProvider.of<ApiBloc>(context).add(ApiPlayPlayList1()),
        ),
        RaisedButton(
          child: Text('Play playlist 2'),
          onPressed: () =>
              BlocProvider.of<ApiBloc>(context).add(ApiPlayPlayList2()),
        ),
      ],
    );
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
            : BlocConsumer<ApiBloc, ApiState>(
                listener: (_, state) {
                  if (state is ApiLoaded)
                    AudioService.updateFlAudioItems(state.items);
                },
                builder: (_, state) {
                  if (state is ApiLoading)
                    return CircularProgressIndicator();
                  else if (state is ApiError)
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        getItems,
                        Text('Api Error'),
                      ],
                    );
                  else if (state is ApiLoaded)
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        getItems,
                        PlayerUI(state.items),
                      ],
                    );
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      getItems,
                      Text('Api Initial'),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
