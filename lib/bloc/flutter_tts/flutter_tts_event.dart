part of 'flutter_tts_bloc.dart';

sealed class FlutterTtsEvent {}

class FlutterTtsEventInit extends FlutterTtsEvent {
  final FlutterTts flutterTts = FlutterTts();
  FlutterTtsEventInit();
}

class FlutterTtsEventStop extends FlutterTtsEvent {
  FlutterTtsEventStop();
}

class FlutterTtsEventSpeak extends FlutterTtsEvent {
  final String text;
  FlutterTtsEventSpeak(this.text);
}
