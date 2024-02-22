part of 'jogo_quiz_cubit.dart';

@immutable
sealed class JogoQuizState {}

final class JogoQuizInitial extends JogoQuizState {}

final class JogoQuizLoading extends JogoQuizState {}

class JogoQuizLoaded extends JogoQuizState {
  final JogoQuizModel jogo;
  JogoQuizLoaded(this.jogo);
}

