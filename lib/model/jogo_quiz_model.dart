class JogoQuizModel {
  final int id;
  final String pergunta;
  final String imagem;
  final String resposta;
  final List<String> universoRespostas;

  get getId => this.id;

  get getPergunta => this.pergunta;

  get getImagem => this.imagem;

  get getResposta => this.resposta;

  get getUniversoRespostas => this.universoRespostas;

  const JogoQuizModel({
    required this.id,
    required this.pergunta,
    required this.imagem,
    required this.resposta,
    required this.universoRespostas
  });

}
