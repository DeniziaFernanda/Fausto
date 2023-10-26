part of 'leitura_bloc.dart';

@immutable
abstract class LeituraEvent {}

class LeituraInitialEvent extends LeituraEvent {

}

class LeituraLoadedEvent extends LeituraEvent {
  final List<LeituraModel> livros;

  LeituraLoadedEvent({required this.livros});
}
