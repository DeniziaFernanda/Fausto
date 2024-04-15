import 'package:fausto/model/jogo_model.dart';
import 'package:fausto/view/alfabeto.dart';
import 'package:fausto/view/animais.dart';
import 'package:fausto/view/cores.dart';
import 'package:fausto/view/desenho.dart';
import 'package:fausto/view/dias_da_semana.dart';
import 'package:fausto/view/frutas.dart';
import 'package:fausto/view/jogo_quiz.dart';
import 'package:fausto/view/leitura.dart';
import 'package:fausto/view/numeros.dart';
import 'package:flutter/material.dart';

class JogoService {
  static Future<List<JogoModel>> getAllJogos() async {
    List<JogoModel> jogos = [];

    jogos.addAll([
      const JogoModel(
          id: 1,
          imagem: 'assets/Imagens/alfabeto/bloco-abc.png',
          nome: "Alfabeto",
          jogo: Alfabeto()),
      const JogoModel(
          id: 2,
          imagem: 'assets/Imagens/numeros/numeros.png',
          nome: "Números",
          jogo: Numeros()),
      const JogoModel(
          id: 3,
          imagem: 'assets/Imagens/frutas/frutas.png',
          nome: "Frutas",
          jogo: Frutas()),
      const JogoModel(
          id: 4,
          imagem: 'assets/Imagens/animais/animais.png',
          nome: "Animais",
          jogo: Animais()),
      const JogoModel(
          id: 5,
          imagem: 'assets/Imagens/dias_da_semana/menina.png',
          nome: "Dias da Semana",
          jogo: DiasDaSemana()),
      const JogoModel(
          id: 6,
          imagem: 'assets/Imagens/cores/roda-de-cores.png',
          nome: "Cores",
          jogo: Cores()),
      const JogoModel(
          id: 7,
          imagem: 'assets/Imagens/desenho/paleta-de-cores.png',
          nome: "Desenho",
          jogo: Desenho()),
      const JogoModel(
          id: 8,
          imagem: 'assets/Imagens/jogo_quiz/pergunta.png',
          nome: "Jogo Quiz",
          jogo: JogoQuiz()),
      const JogoModel(
          id: 9,
          imagem: 'assets/Imagens/leitura/leitura.png',
          nome: "Leitura",
          jogo: Leitura()),
    ]);

    return jogos;
  }

  static Future<List<AlfabetoModel>> getAllAlfabeto() async {
    List<AlfabetoModel> alfabeto = [];

    alfabeto.addAll([
      const AlfabetoModel(
          id: 1,
          letra: 'a',
          imagem: 'assets/Imagens/alfabeto/a.png',
          audio: 'assets/audios/alfabeto/a.mp3'),
      const AlfabetoModel(
          id: 2,
          letra: 'b',
          imagem: 'assets/Imagens/alfabeto/b.png',
          audio: 'assets/audios/alfabeto/b.mp3'),
      const AlfabetoModel(
          id: 3,
          letra: 'c',
          imagem: 'assets/Imagens/alfabeto/c.png',
          audio: 'assets/audios/alfabeto/c.mp3'),
      const AlfabetoModel(
          id: 4,
          letra: 'd',
          imagem: 'assets/Imagens/alfabeto/d.png',
          audio: 'assets/audios/alfabeto/d.mp3'),
      const AlfabetoModel(
          id: 5,
          letra: 'e',
          imagem: 'assets/Imagens/alfabeto/e.png',
          audio: 'assets/audios/alfabeto/e.mp3'),
      const AlfabetoModel(
          id: 6,
          letra: 'f',
          imagem: 'assets/Imagens/alfabeto/f.png',
          audio: 'assets/audios/alfabeto/f.mp3'),
      const AlfabetoModel(
          id: 7,
          letra: 'g',
          imagem: 'assets/Imagens/alfabeto/g.png',
          audio: 'assets/audios/alfabeto/g.mp3'),
      const AlfabetoModel(
          id: 8,
          letra: 'h',
          imagem: 'assets/Imagens/alfabeto/h.png',
          audio: 'assets/audios/alfabeto/h.mp3'),
      const AlfabetoModel(
          id: 9,
          letra: 'i',
          imagem: 'assets/Imagens/alfabeto/i.png',
          audio: 'assets/audios/alfabeto/i.mp3'),
      const AlfabetoModel(
          id: 10,
          letra: 'j',
          imagem: 'assets/Imagens/alfabeto/j.png',
          audio: 'assets/audios/alfabeto/j.mp3'),
      const AlfabetoModel(
          id: 11,
          letra: 'k',
          imagem: 'assets/Imagens/alfabeto/k.png',
          audio: 'assets/audios/alfabeto/k.mp3'),
      const AlfabetoModel(
          id: 12,
          letra: 'l',
          imagem: 'assets/Imagens/alfabeto/l.png',
          audio: 'assets/audios/alfabeto/l.mp3'),
      const AlfabetoModel(
          id: 13,
          letra: 'm',
          imagem: 'assets/Imagens/alfabeto/m.png',
          audio: 'assets/audios/alfabeto/m.mp3'),
      const AlfabetoModel(
          id: 14,
          letra: 'n',
          imagem: 'assets/Imagens/alfabeto/n.png',
          audio: 'assets/audios/alfabeto/n.mp3'),
      const AlfabetoModel(
          id: 15,
          letra: 'o',
          imagem: 'assets/Imagens/alfabeto/o.png',
          audio: 'assets/audios/alfabeto/o.mp3'),
      const AlfabetoModel(
          id: 16,
          letra: 'p',
          imagem: 'assets/Imagens/alfabeto/p.png',
          audio: 'assets/audios/alfabeto/p.mp3'),
      const AlfabetoModel(
          id: 17,
          letra: 'q',
          imagem: 'assets/Imagens/alfabeto/q.png',
          audio: 'assets/audios/alfabeto/q.mp3'),
      const AlfabetoModel(
          id: 18,
          letra: 'r',
          imagem: 'assets/Imagens/alfabeto/r.png',
          audio: 'assets/audios/alfabeto/r.mp3'),
      const AlfabetoModel(
          id: 19,
          letra: 's',
          imagem: 'assets/Imagens/alfabeto/s.png',
          audio: 'assets/audios/alfabeto/s.mp3'),
      const AlfabetoModel(
          id: 20,
          letra: 't',
          imagem: 'assets/Imagens/alfabeto/t.png',
          audio: 'assets/audios/alfabeto/t.mp3'),
      const AlfabetoModel(
          id: 21,
          letra: 'u',
          imagem: 'assets/Imagens/alfabeto/u.png',
          audio: 'assets/audios/alfabeto/u.mp3'),
      const AlfabetoModel(
          id: 22,
          letra: 'v',
          imagem: 'assets/Imagens/alfabeto/v.png',
          audio: 'assets/audios/alfabeto/v.mp3'),
      const AlfabetoModel(
          id: 23,
          letra: 'w',
          imagem: 'assets/Imagens/alfabeto/w.png',
          audio: 'assets/audios/alfabeto/w.mp3'),
      const AlfabetoModel(
          id: 24,
          letra: 'x',
          imagem: 'assets/Imagens/alfabeto/x.png',
          audio: 'assets/audios/alfabeto/x.mp3'),
      const AlfabetoModel(
          id: 25,
          letra: 'y',
          imagem: 'assets/Imagens/alfabeto/y.png',
          audio: 'assets/audios/alfabeto/y.mp3'),
      const AlfabetoModel(
          id: 26,
          letra: 'z',
          imagem: 'assets/Imagens/alfabeto/z.png',
          audio: 'assets/audios/alfabeto/z.mp3'),
    ]);
    return alfabeto;
  }

  static Future<List<AnimalModel>> getAllAnimais() async {
    List<AnimalModel> animais = [];

    animais.addAll([
      const AnimalModel(
        id: 1,
        imagem: 'assets/Imagens/animais/abelha.png',
        audio: 'audios/animais/abelha.mp3',
        nome: 'Abelha',
      ),
      const AnimalModel(
        id: 2,
        imagem: 'assets/Imagens/animais/baleia.png',
        audio: 'audios/animais/baleia.mp3',
        nome: 'Baleia',
      ),
      const AnimalModel(
        id: 3,
        imagem: 'assets/Imagens/animais/bicho-preguica.png',
        audio: 'audios/animais/preguica.mp3',
        nome: 'Preguiça',
      ),
      const AnimalModel(
        id: 4,
        imagem: 'assets/Imagens/animais/borboleta.png',
        audio: 'audios/animais/borboleta.mp3',
        nome: 'Borboleta',
      ),
      const AnimalModel(
        id: 5,
        imagem: 'assets/Imagens/animais/cao.png',
        audio: 'audios/animais/cao.mp3',
        nome: 'Cão',
      ),
      const AnimalModel(
        id: 6,
        imagem: 'assets/Imagens/animais/caranguejo.png',
        audio: 'audios/animais/caranguejo.mp3',
        nome: 'Caranguejo',
      ),
      const AnimalModel(
        id: 7,
        imagem: 'assets/Imagens/animais/cavalo.png',
        audio: 'audios/animais/cavalo.mp3',
        nome: 'Cavalo',
      ),
      const AnimalModel(
        id: 8,
        imagem: 'assets/Imagens/animais/coruja.png',
        audio: 'audios/animais/coruja.mp3',
        nome: 'Coruja',
      ),
      const AnimalModel(
        id: 9,
        imagem: 'assets/Imagens/animais/crocodilo.png',
        audio: 'audios/animais/crocodilo.mp3',
        nome: 'Crocodilo',
      ),
      const AnimalModel(
        id: 10,
        imagem: 'assets/Imagens/animais/elefante.png',
        audio: 'audios/animais/elefante.mp3',
        nome: 'Elefante',
      ),
      const AnimalModel(
        id: 11,
        imagem: 'assets/Imagens/animais/galinha.png',
        audio: 'audios/animais/galinha.mp3',
        nome: 'Galinha',
      ),
      const AnimalModel(
        id: 12,
        imagem: 'assets/Imagens/animais/gato.png',
        audio: 'audios/animais/gato.mp3',
        nome: 'Gato',
      ),
      const AnimalModel(
        id: 13,
        imagem: 'assets/Imagens/animais/girafas.png',
        audio: 'audios/animais/girafa.mp3',
        nome: 'Girafa',
      ),
      const AnimalModel(
        id: 14,
        imagem: 'assets/Imagens/animais/golfinho.png',
        audio: 'audios/animais/golfinho.mp3',
        nome: 'Golfinho',
      ),
      const AnimalModel(
        id: 15,
        imagem: 'assets/Imagens/animais/leao.png',
        audio: 'audios/animais/leao.mp3',
        nome: 'Leão',
      ),
      const AnimalModel(
        id: 16,
        imagem: 'assets/Imagens/animais/macaco.png',
        audio: 'audios/animais/macaco.mp3',
        nome: 'Macaco',
      ),
      const AnimalModel(
        id: 17,
        imagem: 'assets/Imagens/animais/ovelha.png',
        audio: 'audios/animais/ovelha.mp3',
        nome: 'Ovelha',
      ),
      const AnimalModel(
        id: 18,
        imagem: 'assets/Imagens/animais/panda.png',
        audio: 'audios/animais/panda.mp3',
        nome: 'Panda',
      ),
      const AnimalModel(
        id: 19,
        imagem: 'assets/Imagens/animais/pinguim.png',
        audio: 'audios/animais/pinguim.mp3',
        nome: 'Pinguim',
      ),
      const AnimalModel(
        id: 20,
        imagem: 'assets/Imagens/animais/porco.png',
        audio: 'audios/animais/porco.mp3',
        nome: 'Porco',
      ),
      const AnimalModel(
        id: 21,
        imagem: 'assets/Imagens/animais/ra.png',
        audio: 'audios/animais/ra.mp3',
        nome: 'Rã',
      ),
      const AnimalModel(
        id: 22,
        imagem: 'assets/Imagens/animais/rinoceronte.png',
        audio: 'audios/animais/rinoceronte.mp3',
        nome: 'Rinoceronte',
      ),
      const AnimalModel(
        id: 23,
        imagem: 'assets/Imagens/animais/serpente.png',
        audio: 'audios/animais/serpente.mp3',
        nome: 'Serpente',
      ),
      const AnimalModel(
        id: 24,
        imagem: 'assets/Imagens/animais/tartaruga-marinha.png',
        audio: 'audios/animais/tartaruga.mp3',
        nome: 'Tartaruga',
      ),
      const AnimalModel(
        id: 25,
        imagem: 'assets/Imagens/animais/tigre.png',
        audio: 'audios/animais/tigre.mp3',
        nome: 'Tigre',
      ),
      const AnimalModel(
        id: 26,
        imagem: 'assets/Imagens/animais/tucano.png',
        audio: 'audios/animais/tucano.mp3',
        nome: 'Tucano',
      ),
      const AnimalModel(
        id: 27,
        imagem: 'assets/Imagens/animais/vaca.png',
        audio: 'audios/animais/vaca.mp3',
        nome: 'Vaca',
      ),
    ]);
    return animais;
  }

  static Future<List<CoreModel>> getAllCores() async {
    List<CoreModel> cores = [];

    cores.addAll([
      const CoreModel(
        id: 1,
        cor: Colors.red,
        audio: 'audios/cores/vermelha.mp3',
        nome: 'Vermelha',
      ),
      const CoreModel(
        id: 2,
        cor: Colors.blue,
        audio: 'audios/cores/azul.mp3',
        nome: 'Azul',
      ),
      const CoreModel(
        id: 3,
        cor: Colors.yellow,
        audio: 'audios/cores/amarela.mp3',
        nome: 'Amarela',
      ),
      const CoreModel(
        id: 4,
        cor: Colors.green,
        audio: 'audios/cores/verde.mp3',
        nome: 'Verde',
      ),
      const CoreModel(
        id: 5,
        cor: Colors.pink,
        audio: 'audios/cores/rosa.mp3',
        nome: 'Rosa',
      ),
      const CoreModel(
        id: 6,
        cor: Colors.grey,
        audio: 'audios/cores/cinzenta.mp3',
        nome: 'Cinzenta',
      ),
      const CoreModel(
        id: 7,
        cor: Colors.orange,
        audio: 'audios/cores/laranja.mp3',
        nome: 'Laranja',
      ),
      const CoreModel(
        id: 8,
        cor: Colors.brown,
        audio: 'audios/cores/castanha.mp3',
        nome: 'Castanha',
      ),
      const CoreModel(
        id: 9,
        cor: Colors.black,
        audio: 'audios/cores/preta.mp3',
        nome: 'Preta',
      ),
      const CoreModel(
        id: 10,
        cor: Colors.purple,
        audio: 'audios/cores/lilas.mp3',
        nome: 'Lilás',
      ),
      const CoreModel(
        id: 11,
        cor: Colors.white,
        audio: 'audios/cores/branca.mp3',
        nome: 'Branca',
      ),
    ]);
    return cores;
  }

  static Future<List<SemanaModel>> getAllDiasDaSemana() async {
    List<SemanaModel> semana = [];

    semana.addAll([
      const SemanaModel(
        id: 1,
        imagem: 'assets/Imagens/dias_da_semana/imigrante.png',
        audio: 'audios/dias_da_semana/segunda.mp3',
        nome: 'Segunda-Feira',
      ),
      const SemanaModel(
        id: 2,
        imagem: 'assets/Imagens/dias_da_semana/lendo-um-livro.png',
        audio: 'audios/dias_da_semana/terca.mp3',
        nome: 'Terça-Feira',
      ),
      const SemanaModel(
        id: 3,
        imagem: 'assets/Imagens/dias_da_semana/playtime (1).png',
        audio: 'audios/dias_da_semana/quarta.mp3',
        nome: 'Quarta-Feira',
      ),
      const SemanaModel(
        id: 4,
        imagem: 'assets/Imagens/dias_da_semana/playtime.png',
        audio: 'audios/dias_da_semana/quinta.mp3',
        nome: 'Quinta-Feira',
      ),
      const SemanaModel(
        id: 5,
        imagem: 'assets/Imagens/dias_da_semana/bebe.png',
        audio: 'audios/dias_da_semana/sexta.mp3',
        nome: 'Sexta-Feira',
      ),
      const SemanaModel(
        id: 6,
        imagem: 'assets/Imagens/dias_da_semana/futebol.png',
        audio: 'audios/dias_da_semana/sabado.mp3',
        nome: 'Sabádo',
      ),
      const SemanaModel(
        id: 7,
        imagem: 'assets/Imagens/dias_da_semana/igreja.png',
        audio: 'audios/dias_da_semana/domingo.mp3',
        nome: 'Domingo',
      )
    ]);
    return semana;
  }

  static Future<List<NumeroModel>> getAllNumeros() async {
    List<NumeroModel> numeros = [];

    numeros.addAll([
      const NumeroModel(
          id: 1,
          numero: '1',
          imagem: 'assets/Imagens/numeros/1.png',
          audio: 'audios/numeros/1.mp3'),
      const NumeroModel(
          id: 2,
          numero: '2',
          imagem: 'assets/Imagens/numeros/2.png',
          audio: 'audios/numeros/2.mp3'),
      const NumeroModel(
          id: 3,
          numero: '3',
          imagem: 'assets/Imagens/numeros/3.png',
          audio: 'audios/numeros/3.mp3'),
      const NumeroModel(
          id: 4,
          numero: '4',
          imagem: 'assets/Imagens/numeros/4.png',
          audio: 'audios/numeros/4.mp3'),
      const NumeroModel(
          id: 5,
          numero: '5',
          imagem: 'assets/Imagens/numeros/5.png',
          audio: 'audios/numeros/5.mp3'),
      const NumeroModel(
          id: 6,
          numero: '6',
          imagem: 'assets/Imagens/numeros/6.png',
          audio: 'audios/numeros/6.mp3'),
      const NumeroModel(
          id: 7,
          numero: '7',
          imagem: 'assets/Imagens/numeros/7.png',
          audio: 'audios/numeros/7.mp3'),
      const NumeroModel(
          id: 8,
          numero: '8',
          imagem: 'assets/Imagens/numeros/8.png',
          audio: 'audios/numeros/8.mp3'),
      const NumeroModel(
          id: 9,
          numero: '9',
          imagem: 'assets/Imagens/numeros/9.png',
          audio: 'audios/numeros/9.mp3'),
      const NumeroModel(
          id: 10,
          numero: '10',
          imagem: 'assets/Imagens/numeros/10.png',
          audio: 'audios/numeros/10.mp3')
    ]);
    return numeros;
  }

  static Future<List<FrutaModel>> getAllFrutas() async {
    List<FrutaModel> frutas = [];

    frutas.addAll([
      const FrutaModel(
        id: 1,
        imagem: 'assets/Imagens/frutas/abacate.png',
        audio: 'audios/frutas/abacate.mp3',
        nome: 'Abacate',
      ),
      const FrutaModel(
        id: 2,
        imagem: 'assets/Imagens/frutas/abacaxi.png',
        audio: 'audios/frutas/abacaxi.mp3',
        nome: 'Abacaxi',
      ),
      const FrutaModel(
        id: 3,
        imagem: 'assets/Imagens/frutas/abobora.png',
        audio: 'audios/frutas/abobora.mp3',
        nome: 'Abobora',
      ),
      const FrutaModel(
        id: 4,
        imagem: 'assets/Imagens/frutas/banana.png',
        audio: 'audios/frutas/banana.mp3',
        nome: 'Banana',
      ),
      const FrutaModel(
        id: 5,
        imagem: 'assets/Imagens/frutas/cerejas.png',
        audio: 'audios/frutas/cereja.mp3',
        nome: 'Cereja',
      ),
      const FrutaModel(
        id: 6,
        imagem: 'assets/Imagens/frutas/laranja.png',
        audio: 'audios/frutas/laranja.mp3',
        nome: 'Laranja',
      ),
      const FrutaModel(
        id: 7,
        imagem: 'assets/Imagens/frutas/limao.png',
        audio: 'audios/frutas/limao.mp3',
        nome: 'Limão',
      ),
      const FrutaModel(
        id: 8,
        imagem: 'assets/Imagens/frutas/maca.png',
        audio: 'audios/frutas/maca.mp3',
        nome: 'Maçã',
      ),
      const FrutaModel(
        id: 9,
        imagem: 'assets/Imagens/frutas/manga.png',
        audio: 'audios/frutas/manga.mp3',
        nome: 'Manga',
      ),
      const FrutaModel(
        id: 10,
        imagem: 'assets/Imagens/frutas/melancia.png',
        audio: 'audios/frutas/melancia.mp3',
        nome: 'Melancia',
      ),
      const FrutaModel(
        id: 11,
        imagem: 'assets/Imagens/frutas/morango.png',
        audio: 'audios/frutas/morango.mp3',
        nome: 'Morango',
      ),
      const FrutaModel(
        id: 12,
        imagem: 'assets/Imagens/frutas/pera.png',
        audio: 'audios/frutas/pera.mp3',
        nome: 'Pera',
      ),
      const FrutaModel(
        id: 13,
        imagem: 'assets/Imagens/frutas/uvas.png',
        audio: 'audios/frutas/uva.mp3',
        nome: 'Uva',
      ),
    ]);
    return frutas;
  }
}
