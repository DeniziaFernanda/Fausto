import 'package:fausto/features/animal/data/model/animal_model.dart';

abstract class AnimalDataSource {
  Future<List<AnimalModel>> fetchAnimals();
}

class AnimalDataSourceImpl implements AnimalDataSource {
  @override
  Future<List<AnimalModel>> fetchAnimals() async {
    return [
      const AnimalModel(
        id: 1,
        image: 'assets/Imagens/animais/abelha.png',
        audio: 'audios/animais/abelha.mp3',
        name: 'Abelha',
      ),
      const AnimalModel(
        id: 2,
        image: 'assets/Imagens/animais/baleia.png',
        audio: 'audios/animais/baleia.mp3',
        name: 'Baleia',
      ),
      const AnimalModel(
        id: 3,
        image: 'assets/Imagens/animais/bicho-preguica.png',
        audio: 'audios/animais/preguica.mp3',
        name: 'Preguiça',
      ),
      const AnimalModel(
        id: 4,
        image: 'assets/Imagens/animais/borboleta.png',
        audio: 'audios/animais/borboleta.mp3',
        name: 'Borboleta',
      ),
      const AnimalModel(
        id: 5,
        image: 'assets/Imagens/animais/cao.png',
        audio: 'audios/animais/cao.mp3',
        name: 'Cão',
      ),
      const AnimalModel(
        id: 6,
        image: 'assets/Imagens/animais/caranguejo.png',
        audio: 'audios/animais/caranguejo.mp3',
        name: 'Caranguejo',
      ),
      const AnimalModel(
        id: 7,
        image: 'assets/Imagens/animais/cavalo.png',
        audio: 'audios/animais/cavalo.mp3',
        name: 'Cavalo',
      ),
      const AnimalModel(
        id: 8,
        image: 'assets/Imagens/animais/coruja.png',
        audio: 'audios/animais/coruja.mp3',
        name: 'Coruja',
      ),
      const AnimalModel(
        id: 9,
        image: 'assets/Imagens/animais/crocodilo.png',
        audio: 'audios/animais/crocodilo.mp3',
        name: 'Crocodilo',
      ),
      const AnimalModel(
        id: 10,
        image: 'assets/Imagens/animais/elefante.png',
        audio: 'audios/animais/elefante.mp3',
        name: 'Elefante',
      ),
      const AnimalModel(
        id: 11,
        image: 'assets/Imagens/animais/galinha.png',
        audio: 'audios/animais/galinha.mp3',
        name: 'Galinha',
      ),
      const AnimalModel(
        id: 12,
        image: 'assets/Imagens/animais/gato.png',
        audio: 'audios/animais/gato.mp3',
        name: 'Gato',
      ),
      const AnimalModel(
        id: 13,
        image: 'assets/Imagens/animais/girafas.png',
        audio: 'audios/animais/girafa.mp3',
        name: 'Girafa',
      ),
      const AnimalModel(
        id: 14,
        image: 'assets/Imagens/animais/golfinho.png',
        audio: 'audios/animais/golfinho.mp3',
        name: 'Golfinho',
      ),
      const AnimalModel(
        id: 15,
        image: 'assets/Imagens/animais/leao.png',
        audio: 'audios/animais/leao.mp3',
        name: 'Leão',
      ),
      const AnimalModel(
        id: 16,
        image: 'assets/Imagens/animais/macaco.png',
        audio: 'audios/animais/macaco.mp3',
        name: 'Macaco',
      ),
      const AnimalModel(
        id: 17,
        image: 'assets/Imagens/animais/ovelha.png',
        audio: 'audios/animais/ovelha.mp3',
        name: 'Ovelha',
      ),
      const AnimalModel(
        id: 18,
        image: 'assets/Imagens/animais/panda.png',
        audio: 'audios/animais/panda.mp3',
        name: 'Panda',
      ),
      const AnimalModel(
        id: 19,
        image: 'assets/Imagens/animais/pinguim.png',
        audio: 'audios/animais/pinguim.mp3',
        name: 'Pinguim',
      ),
      const AnimalModel(
        id: 20,
        image: 'assets/Imagens/animais/porco.png',
        audio: 'audios/animais/porco.mp3',
        name: 'Porco',
      ),
      const AnimalModel(
        id: 21,
        image: 'assets/Imagens/animais/ra.png',
        audio: 'audios/animais/ra.mp3',
        name: 'Rã',
      ),
      const AnimalModel(
        id: 22,
        image: 'assets/Imagens/animais/rinoceronte.png',
        audio: 'audios/animais/rinoceronte.mp3',
        name: 'Rinoceronte',
      ),
      const AnimalModel(
        id: 23,
        image: 'assets/Imagens/animais/serpente.png',
        audio: 'audios/animais/serpente.mp3',
        name: 'Serpente',
      ),
      const AnimalModel(
        id: 24,
        image: 'assets/Imagens/animais/tartaruga-marinha.png',
        audio: 'audios/animais/tartaruga.mp3',
        name: 'Tartaruga',
      ),
      const AnimalModel(
        id: 25,
        image: 'assets/Imagens/animais/tigre.png',
        audio: 'audios/animais/tigre.mp3',
        name: 'Tigre',
      ),
      const AnimalModel(
        id: 26,
        image: 'assets/Imagens/animais/tucano.png',
        audio: 'audios/animais/tucano.mp3',
        name: 'Tucano',
      ),
      const AnimalModel(
        id: 27,
        image: 'assets/Imagens/animais/vaca.png',
        audio: 'audios/animais/vaca.mp3',
        name: 'Vaca',
      ),
    ];
  }
}
