part of 'leitura_bloc.dart';

@immutable
abstract class LeituraState {
  final List<LeituraModel> livros;
  LeituraState({required this.livros});
}

class LeituraInitialState extends LeituraState {
  LeituraInitialState(): super(livros: []);
}

class LeituraLoadingState extends LeituraState {
  LeituraLoadingState(): super(livros: []);

}

class LeituraLoadedState extends LeituraState {
  final List<LeituraModel> livros;
  final LeituraModel livro;
  LeituraLoadedState(this.livro, {required this.livros}): super(livros: livros);
}

class LeituraErroState extends LeituraState {
  LeituraErroState(): super(livros: []);

}