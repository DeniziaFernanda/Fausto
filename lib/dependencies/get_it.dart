import 'package:fausto/bloc/flutter_tts/flutter_tts_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> registerDependencies() async {
  getIt.registerSingleton<FlutterTts>(FlutterTts());
  getIt.registerSingletonAsync<FlutterTtsBloc>(() async {
    final bloc = FlutterTtsBloc();
    await bloc.configureFlutterTts();
    return bloc;
  });
}
