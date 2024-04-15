import 'package:bloc/bloc.dart';
import 'package:fausto/dependencies/get_it.dart';
import 'package:flutter_tts/flutter_tts.dart';

part 'flutter_tts_event.dart';
part 'flutter_tts_state.dart';

class FlutterTtsBloc extends Bloc<FlutterTtsEvent, FlutterTtsState> {
  FlutterTtsBloc([
    this.language = 'pt-BR',
  ]) : super(FlutterTtsInitial()) {
    on<FlutterTtsEventSpeak>(_onFlutterTtsEventSpeak);
    on<FlutterTtsEventStop>(_onFlutterTtsEventStop);
  }
  final FlutterTts flutterTts = getIt<FlutterTts>();
  final String language;

  Future<void> configureFlutterTts() async {
    await flutterTts.setLanguage(language);
    await flutterTts.setPitch(0.8);
  }

  Future<void> _onFlutterTtsEventStop(
    FlutterTtsEventStop event,
    Emitter<FlutterTtsState> emit,
  ) async {
    await flutterTts.stop();
  }

  Future<void> _onFlutterTtsEventSpeak(
    FlutterTtsEventSpeak event,
    Emitter<FlutterTtsState> emit,
  ) async {
    _speakText(event.text);
  }

  Future<void> _speakText(String text) async {
    print('TTS iniciado pelo bloc');
    await flutterTts.speak(text);
  }
}
