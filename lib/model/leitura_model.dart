class LeituraModel {
  final int id;
  final String livro;
  final String imagem;

  get getId => id;

  get getLivro => livro;

  get getImagem => imagem;


  const LeituraModel({
    required this.id,
    required this.livro,
    required this.imagem,
  });

}
