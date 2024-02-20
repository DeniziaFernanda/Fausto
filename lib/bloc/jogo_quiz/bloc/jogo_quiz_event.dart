part of 'jogo_quiz_bloc.dart';

@immutable
abstract class JogoQuizEvent {}

class JogoQuizInitialEvent extends JogoQuizEvent {

}

class JogoQuizLoadedEvent extends JogoQuizEvent {
  final List<JogoQuizModel> jogos;

  JogoQuizLoadedEvent({required this.jogos});
}
