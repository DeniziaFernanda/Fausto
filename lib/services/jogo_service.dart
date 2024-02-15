import 'package:fausto/model/jogo_model.dart';

class JogoService {
  static Future<List<AlfabetoModel>> getAllAlfabeto() async {
    List<AlfabetoModel> alfabeto = [];

    alfabeto.addAll([
      const AlfabetoModel(
          id: 1,
          imagem: 'assets/Imagens/alfabeto/a.png',
          audio: 'audios/alfabeto/a.mp3'),
      const AlfabetoModel(
          id: 2,
          imagem: 'assets/Imagens/alfabeto/b.png',
          audio: 'audios/alfabeto/b.mp3'),
      const AlfabetoModel(
          id: 3,
          imagem: 'assets/Imagens/alfabeto/c.png',
          audio: 'audios/alfabeto/c.mp3'),
      const AlfabetoModel(
          id: 4,
          imagem: 'assets/Imagens/alfabeto/d.png',
          audio: 'audios/alfabeto/d.mp3'),
      const AlfabetoModel(
          id: 5,
          imagem: 'assets/Imagens/alfabeto/e.png',
          audio: 'audios/alfabeto/e.mp3'),
      const AlfabetoModel(
          id: 6,
          imagem: 'assets/Imagens/alfabeto/f.png',
          audio: 'audios/alfabeto/f.mp3'),
      const AlfabetoModel(
          id: 7,
          imagem: 'assets/Imagens/alfabeto/g.png',
          audio: 'audios/alfabeto/g.mp3'),
      const AlfabetoModel(
          id: 8,
          imagem: 'assets/Imagens/alfabeto/h.png',
          audio: 'audios/alfabeto/h.mp3'),
      const AlfabetoModel(
          id: 9,
          imagem: 'assets/Imagens/alfabeto/i.png',
          audio: 'audios/alfabeto/i.mp3'),
      const AlfabetoModel(
          id: 10,
          imagem: 'assets/Imagens/alfabeto/j.png',
          audio: 'audios/alfabeto/j.mp3'),
      const AlfabetoModel(
          id: 11,
          imagem: 'assets/Imagens/alfabeto/k.png',
          audio: 'audios/alfabeto/k.mp3'),
      const AlfabetoModel(
          id: 12,
          imagem: 'assets/Imagens/alfabeto/l.png',
          audio: 'audios/alfabeto/l.mp3'),
      const AlfabetoModel(
          id: 13,
          imagem: 'assets/Imagens/alfabeto/m.png',
          audio: 'audios/alfabeto/m.mp3'),
      const AlfabetoModel(
          id: 14,
          imagem: 'assets/Imagens/alfabeto/n.png',
          audio: 'audios/alfabeto/n.mp3'),
      const AlfabetoModel(
          id: 15,
          imagem: 'assets/Imagens/alfabeto/o.png',
          audio: 'audios/alfabeto/o.mp3'),
      const AlfabetoModel(
          id: 16,
          imagem: 'assets/Imagens/alfabeto/p.png',
          audio: 'audios/alfabeto/p.mp3'),
      const AlfabetoModel(
          id: 17,
          imagem: 'assets/Imagens/alfabeto/q.png',
          audio: 'audios/alfabeto/q.mp3'),
      const AlfabetoModel(
          id: 18,
          imagem: 'assets/Imagens/alfabeto/r.png',
          audio: 'audios/alfabeto/r.mp3'),
      const AlfabetoModel(
          id: 19,
          imagem: 'assets/Imagens/alfabeto/s.png',
          audio: 'audios/alfabeto/s.mp3'),
      const AlfabetoModel(
          id: 20,
          imagem: 'assets/Imagens/alfabeto/t.png',
          audio: 'audios/alfabeto/t.mp3'),
      const AlfabetoModel(
          id: 21,
          imagem: 'assets/Imagens/alfabeto/u.png',
          audio: 'audios/alfabeto/u.mp3'),
      const AlfabetoModel(
          id: 22,
          imagem: 'assets/Imagens/alfabeto/v.png',
          audio: 'audios/alfabeto/v.mp3'),
      const AlfabetoModel(
          id: 23,
          imagem: 'assets/Imagens/alfabeto/w.png',
          audio: 'audios/alfabeto/w.mp3'),
      const AlfabetoModel(
          id: 24,
          imagem: 'assets/Imagens/alfabeto/x.png',
          audio: 'audios/alfabeto/x.mp3'),
      const AlfabetoModel(
          id: 25,
          imagem: 'assets/Imagens/alfabeto/y.png',
          audio: 'audios/alfabeto/y.mp3'),
      const AlfabetoModel(
          id: 26,
          imagem: 'assets/Imagens/alfabeto/z.png',
          audio: 'audios/alfabeto/z.mp3'),
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
        imagem: 'assets/Imagens/animais/girafa.png',
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
}
