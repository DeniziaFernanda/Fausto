part of 'jogo_quiz_bloc.dart';

@immutable 
abstract class JogoQuizState {
  final List<JogoQuizModel> jogos;
  JogoQuizState({required this.jogos});
}

class JogoQuizInitialState extends JogoQuizState {
  JogoQuizInitialState(): super(jogos: []);
}

class JogoQuizLoadingState extends JogoQuizState {
  JogoQuizLoadingState(): super(jogos: []);

}

class JogoQuizLoadedState extends JogoQuizState {
  final List<JogoQuizModel> jogos;
  final JogoQuizModel jogo;
  JogoQuizLoadedState(this.jogo, {required this.jogos}): super(jogos: jogos);
}

class JogoQuizErroState extends JogoQuizState {
  JogoQuizErroState(): super(jogos: []);

}