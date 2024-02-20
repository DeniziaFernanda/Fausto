class JogoQuizModel {
  final int id;
  final String pergunta;
  final String imagem;
  final String resposta;
  final List<String> universoRespostas;

  get getId => id;

  get getPergunta => pergunta;

  get getImagem => imagem;

  get getResposta => resposta;

  get getUniversoRespostas => universoRespostas;

  const JogoQuizModel({
    required this.id,
    required this.pergunta,
    required this.imagem,
    required this.resposta,
    required this.universoRespostas
  });

}
