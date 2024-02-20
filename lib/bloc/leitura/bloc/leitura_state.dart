part of 'leitura_bloc.dart';

@immutable
abstract class LeituraState {
  final List<LeituraModel> livros;
  const LeituraState({required this.livros});
}

class LeituraInitialState extends LeituraState {
  LeituraInitialState(): super(livros: []);
}

class LeituraLoadingState extends LeituraState {
  LeituraLoadingState(): super(livros: []);

}

class LeituraLoadedState extends LeituraState {
  @override
  // ignore: overridden_fields
  final List<LeituraModel> livros;
  final LeituraModel livro;
  const LeituraLoadedState(this.livro, {required this.livros}): super(livros: livros);
}

class LeituraErroState extends LeituraState {
  LeituraErroState(): super(livros: []);

}