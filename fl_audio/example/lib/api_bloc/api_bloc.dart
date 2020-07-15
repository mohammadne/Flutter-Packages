import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:example/audio_service/audio_service.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:meta/meta.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  @override
  ApiState get initialState => ApiInitial();

  @override
  Stream<ApiState> mapEventToState(ApiEvent event) async* {
    yield ApiLoading();
    await Future.delayed(Duration(seconds: 2));
    if (event is ApiPlayPlayList1) {
      yield ApiLoaded(list1);
    } else if (event is ApiPlayPlayList1) {
      yield ApiLoaded(list2);
    }
  }
}

List<FlAudioItem> list1 = <FlAudioItem>[
  FlAudioItem(
    id: "https://dl.melovaz.net/Free/2019/11/This%20Is%20Taylor%20Swift%20%282019%29%20MELOVAZ.NET/01%20Lover%20%28Remix%29.mp3",
    album: "This Is Taylor Swift",
    title: "Lover (Remix)",
    artist: "Taylor Swift",
    duration: Duration(milliseconds: 223000),
    artUri:
        "http://musicsbaran.ir/wp-content/uploads/2020/01/Taylor-Swift-Pic-77766.jpg",
  ),
  FlAudioItem(
    id: "https://dl.melovaz.net/Free/2019/11/This%20Is%20Taylor%20Swift%20%282019%29%20MELOVAZ.NET/01%20Lover%20%28Remix%29.mp3",
    album: "This Is Taylor Swift",
    title: "Blank Space",
    artist: "Taylor Swift",
    duration: Duration(milliseconds: 233000),
    artUri:
        "http://up.irandubstep.ir/view/2860777/Taylor%20Swift%20-%20You%20Need%20To%20Calm%20Down.jpg",
  ),
  FlAudioItem(
    id: "https://dl.melovaz.net/Free/2019/11/This%20Is%20Taylor%20Swift%20%282019%29%20MELOVAZ.NET/03%20Delicate.mp3",
    album: "This Is Taylor Swift",
    title: "Delicate",
    artist: "Taylor Swift",
    duration: Duration(milliseconds: 234000),
    artUri:
        "http://up.irandubstep.ir/view/2860777/Taylor%20Swift%20-%20You%20Need%20To%20Calm%20Down.jpg",
  ),
  FlAudioItem(
    id: "https://dl.melovaz.net/Free/2019/11/This%20Is%20Taylor%20Swift%20%282019%29%20MELOVAZ.NET/04%20You%20Need%20To%20Calm%20Down.mp3",
    album: "This Is Taylor Swift",
    title: "You Need To Calm Down",
    artist: "Taylor Swift",
    duration: Duration(milliseconds: 173000),
    artUri:
        "http://up.irandubstep.ir/view/2860777/Taylor%20Swift%20-%20You%20Need%20To%20Calm%20Down.jpg",
  ),
];

List<FlAudioItem> list2 = <FlAudioItem>[];
