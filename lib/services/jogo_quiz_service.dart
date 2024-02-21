
import 'dart:math';

import 'package:fausto/model/jogo_quiz_model.dart';

class JogoQuizService {
  final List<JogoQuizModel> jogoQuiz = [];
  final List<String> frutas = [
          'Abacate',
          'Abacaxi',
          'Abobora',
          'Banana',
          'Cereja',
          'Laranja',
          'Limão',
          'Maçã',
          'Manga',
          'Melancia',
          'Morango',
          'Pera',
          'Uva',
        ];
  final List<String> animais = [
          'Abelha',
      'Baleia',
      'Preguica',
      'Borboleta',
      'Cão',
      'Caranguejo',
      'Cavalo',
      'Coruja',
      'Crocodilo',
      'Elefante',
      'Galinha',
      'Gato',
      'Girafa',
      'Golfinho',
      'Leão',
      'Macaco',
      'Ovelha',
      'Panda',
      'Pinguim',
      'Porco',
      'Rã',
      'Rinoceronte',
      'Serpente',
      'Tartaruga',
      'Tigre',
      'Tucano',
      'Vaca',
        ];

  List<String> universoDeRespostas(List<String> lista, String resposta){
       return lista.where((element) => element != resposta).toList();
  }

  Future<List<JogoQuizModel>> initList() async {
    jogoQuiz.addAll([
      // Frutas
       JogoQuizModel(
        id: 1,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/abacate.png', 
        resposta: 'Abacate', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 2,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/abacaxi.png', 
        resposta: 'Abacaxi', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 3,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/abobora.png', 
        resposta: 'Abobora', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 4,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/banana.png', 
        resposta: 'Banana', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 5,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/cerejas.png', 
        resposta: 'Cereja', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 6,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/laranja.png', 
        resposta: 'Laranja', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 7,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/limao.png', 
        resposta: 'Limão', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 8,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/maca.png', 
        resposta: 'Maçã', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 9,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/manga.png', 
        resposta: 'Manga', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 10,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/melancia.png', 
        resposta: 'Melancia', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 11,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/morango.png', 
        resposta: 'Morango', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 12,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/pera.png', 
        resposta: 'Pera', 
        universoRespostas: frutas
        ),
       JogoQuizModel(
        id: 13,
        pergunta: 'Qual é o nome desta fluta?', 
        imagem: 'assets/Imagens/frutas/uvas.png', 
        resposta: 'Uva', 
        universoRespostas: frutas
        ),
      // Animais
        JogoQuizModel(
        id: 14,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/abelha.png', 
        resposta: 'Abelha', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 15,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/baleia.png', 
        resposta: 'Baleia', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 16,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/bicho-preguica.png', 
        resposta: 'Preguiça', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 17,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/borboleta.png', 
        resposta: 'Borboleta', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 18,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/cao.png', 
        resposta: 'Cão', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 19,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/caranguejo.png', 
        resposta: 'Caranguejo', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 20,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/cavalo.png', 
        resposta: 'Cavalo', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 21,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/coruja.png', 
        resposta: 'Coruja', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 22,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/crocodilo.png', 
        resposta: 'Crocodilo', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 23,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/elefante.png', 
        resposta: 'Elefante', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 24,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/galinha.png', 
        resposta: 'Galinha', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 25,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/gato.png', 
        resposta: 'Gato', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 26,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/girafas.png', 
        resposta: 'Girafa', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 27,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/golfinho.png', 
        resposta: 'Golfinho', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 28,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/leao.png', 
        resposta: 'Leão', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 29,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/macaco.png', 
        resposta: 'Macaco', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 30,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/ovelha.png', 
        resposta: 'Ovelha', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 31,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/panda.png', 
        resposta: 'Panda', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 32,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/pinguim.png', 
        resposta: 'Pinguim', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 33,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/porco.png', 
        resposta: 'Porco', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 34,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/ra.png', 
        resposta: 'Rã', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 35,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/rinoceronte.png', 
        resposta: 'Rinoceronte', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 36,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/serpente.png', 
        resposta: 'Serpente', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 37,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/tartaruga-marinha.png', 
        resposta: 'Tartaruga', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 38,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/tigre.png', 
        resposta: 'Tigre', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 39,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/tucano.png', 
        resposta: 'Tucano', 
        universoRespostas: animais
        ),
       JogoQuizModel(
        id: 40,
        pergunta: 'Qual é o nome deste animal?', 
        imagem: 'assets/Imagens/animais/vaca.png', 
        resposta: 'Vaca', 
        universoRespostas: animais
        ),
      
    ]);
    return Future.delayed(const Duration(microseconds: 6200), () => jogoQuiz);
  }

  Future<JogoQuizModel> findOne() async{
    int tamanho = jogoQuiz.length;
    int valor = Random().nextInt(tamanho);
    return Future.delayed(const Duration(microseconds: 6200), () => jogoQuiz[valor]);
  }

  Future<List<JogoQuizModel>> findAll() async {
    return Future.delayed(const Duration(microseconds: 6200), () => jogoQuiz);
  }

  
}
