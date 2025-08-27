import 'package:fausto/features/fruit/data/model/fruit_model.dart';

abstract class FruitDatasource {
  Future<List<FruitModel>> getFruits();
}

class FruitDatasourceImpl implements FruitDatasource {
  @override
  Future<List<FruitModel>> getFruits() async{
    return [
      const FruitModel(
        id: 1,
        image: 'assets/Imagens/frutas/abacate.png',
        audio: 'audios/frutas/abacate.mp3',
        name: 'Abacate',
      ),
      const FruitModel(
        id: 2,
        image: 'assets/Imagens/frutas/abacaxi.png',
        audio: 'audios/frutas/abacaxi.mp3',
        name: 'Abacaxi',
      ),
      const FruitModel(
        id: 3,
        image: 'assets/Imagens/frutas/abobora.png',
        audio: 'audios/frutas/abobora.mp3',
        name: 'Abobora',
      ),
      const FruitModel(
        id: 4,
        image: 'assets/Imagens/frutas/banana.png',
        audio: 'audios/frutas/banana.mp3',
        name: 'Banana',
      ),
      const FruitModel(
        id: 5,
        image: 'assets/Imagens/frutas/cerejas.png',
        audio: 'audios/frutas/cereja.mp3',
        name: 'Cereja',
      ),
      const FruitModel(
        id: 6,
        image: 'assets/Imagens/frutas/laranja.png',
        audio: 'audios/frutas/laranja.mp3',
        name: 'Laranja',
      ),
      const FruitModel(
        id: 7,
        image: 'assets/Imagens/frutas/limao.png',
        audio: 'audios/frutas/limao.mp3',
        name: 'Limão',
      ),
      const FruitModel(
        id: 8,
        image: 'assets/Imagens/frutas/maca.png',
        audio: 'audios/frutas/maca.mp3',
        name: 'Maçã',
      ),
      const FruitModel(
        id: 9,
        image: 'assets/Imagens/frutas/manga.png',
        audio: 'audios/frutas/manga.mp3',
        name: 'Manga',
      ),
      const FruitModel(
        id: 10,
        image: 'assets/Imagens/frutas/melancia.png',
        audio: 'audios/frutas/melancia.mp3',
        name: 'Melancia',
      ),
      const FruitModel(
        id: 11,
        image: 'assets/Imagens/frutas/morango.png',
        audio: 'audios/frutas/morango.mp3',
        name: 'Morango',
      ),
      const FruitModel(
        id: 12,
        image: 'assets/Imagens/frutas/pera.png',
        audio: 'audios/frutas/pera.mp3',
        name: 'Pera',
      ),
      const FruitModel(
        id: 13,
        image: 'assets/Imagens/frutas/uvas.png',
        audio: 'audios/frutas/uva.mp3',
        name: 'Uva',
      ),
    ];
  }
  
}