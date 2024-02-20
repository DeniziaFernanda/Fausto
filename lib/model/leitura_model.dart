class LeituraModel {
  final int id;
  final String livro;
  final String imagem;

  get getId => this.id;

  get getLivro => this.livro;

  get getImagem => this.imagem;


  const LeituraModel({
    required this.id,
    required this.livro,
    required this.imagem,
  });

}
