import 'package:fausto/features/color/data/model/color_model.dart';

abstract class ColorDataSource {
  Future<List<ColorModel>> fetchColors();
}

class ColorDataSourceImpl implements ColorDataSource {
  @override
  Future<List<ColorModel>> fetchColors() async {
    return [
     const ColorModel(
        id: 1,
        color: "0xFFFF0000",
        audio: 'audios/cores/vermelha.mp3',
        name: 'Vermelha',
      ),
      const ColorModel(
        id: 2,
        color: "0xFF0000FF",
        audio: 'audios/cores/azul.mp3',
        name: 'Azul',
      ),
      const ColorModel(
        id: 3,
        color: "0xFFFFFF00",
        audio: 'audios/cores/amarela.mp3',
        name: 'Amarela',
      ),
      const ColorModel(
        id: 4,
        color: "0xFF00FF00",
        audio: 'audios/cores/verde.mp3',
        name: 'Verde',
      ),
      const ColorModel(
        id: 5,
        color: "0xFFFFC0CB",
        audio: 'audios/cores/rosa.mp3',
        name: 'Rosa',
      ),
      const ColorModel(
        id: 6,
        color: "0xFF808080",
        audio: 'audios/cores/cinzenta.mp3',
        name: 'Cinzenta',
      ),
      const ColorModel(
        id: 7,
        color: "0xFFFFA500",
        audio: 'audios/cores/laranja.mp3',
        name: 'Laranja',
      ),
      const ColorModel(
        id: 8,
        color: "0xFFA52A2A",
        audio: 'audios/cores/castanha.mp3',
        name: 'Castanha',
      ),
      const ColorModel(
        id: 9,
        color: "0xFF000000",
        audio: 'audios/cores/preta.mp3',
        name: 'Preta',
      ),
      const ColorModel(
        id: 10,
        color: "0xFF800080",
        audio: 'audios/cores/lilas.mp3',
        name: 'Lilás',
      ),
      const ColorModel(
        id: 11,
        color: "0xFFFFFFFF",
        audio: 'audios/cores/branca.mp3',
        name: 'Branca',
      ),
    ];
  }
}