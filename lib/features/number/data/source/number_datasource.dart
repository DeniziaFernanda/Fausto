import 'package:fausto/features/number/data/model/number_model.dart';

abstract class NumberDatasource {
  Future<List<NumberModel>> getNumbers();
}

class NumberDatasourceImpl implements NumberDatasource {
  @override
  Future<List<NumberModel>> getNumbers() async{
    return [
      const NumberModel(
          id: 1,
          number: '1',
          image: 'assets/Imagens/numeros/1.png',
          audio: 'audios/numeros/1.mp3'),
      const NumberModel(
          id: 2,
          number: '2',
          image: 'assets/Imagens/numeros/2.png',
          audio: 'audios/numeros/2.mp3'),
      const NumberModel(
          id: 3,
          number: '3',
          image: 'assets/Imagens/numeros/3.png',
          audio: 'audios/numeros/3.mp3'),
      const NumberModel(
          id: 4,
          number: '4',
          image: 'assets/Imagens/numeros/4.png',
          audio: 'audios/numeros/4.mp3'),
      const NumberModel(
          id: 5,
          number: '5',
          image: 'assets/Imagens/numeros/5.png',
          audio: 'audios/numeros/5.mp3'),
      const NumberModel(
          id: 6,
          number: '6',
          image: 'assets/Imagens/numeros/6.png',
          audio: 'audios/numeros/6.mp3'),
      const NumberModel(
          id: 7,
          number: '7',
          image: 'assets/Imagens/numeros/7.png',
          audio: 'audios/numeros/7.mp3'),
      const NumberModel(
          id: 8,
          number: '8',
          image: 'assets/Imagens/numeros/8.png',
          audio: 'audios/numeros/8.mp3'),
      const NumberModel(
          id: 9,
          number: '9',
          image: 'assets/Imagens/numeros/9.png',
          audio: 'audios/numeros/9.mp3'),
      const NumberModel(
          id: 10,
          number: '10',
          image: 'assets/Imagens/numeros/10.png',
          audio: 'audios/numeros/10.mp3')
    ];
  }
  
}