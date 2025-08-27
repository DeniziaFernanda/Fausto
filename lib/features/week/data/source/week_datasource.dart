import 'package:fausto/features/week/data/model/week_model.dart';

abstract class WeekDataSource {
  Future<List<WeekModel>> getWeeks();
}

class WeekDatasourceImpl implements WeekDataSource {
  @override
  Future<List<WeekModel>> getWeeks() async {
    return [
       const WeekModel(
        id: 1,
        image: 'assets/Imagens/dias_da_semana/imigrante.png',
        audio: 'audios/dias_da_semana/segunda.mp3',
        name: 'Segunda-Feira',
      ),
      const WeekModel(
        id: 2,
        image: 'assets/Imagens/dias_da_semana/lendo-um-livro.png',
        audio: 'audios/dias_da_semana/terca.mp3',
        name: 'Terça-Feira',
      ),
      const WeekModel(
        id: 3,
        image: 'assets/Imagens/dias_da_semana/playtime (1).png',
        audio: 'audios/dias_da_semana/quarta.mp3',
        name: 'Quarta-Feira',
      ),
      const WeekModel(
        id: 4,
        image: 'assets/Imagens/dias_da_semana/playtime.png',
        audio: 'audios/dias_da_semana/quinta.mp3',
        name: 'Quinta-Feira',
      ),
      const WeekModel(
        id: 5,
        image: 'assets/Imagens/dias_da_semana/bebe.png',
        audio: 'audios/dias_da_semana/sexta.mp3',
        name: 'Sexta-Feira',
      ),
      const WeekModel(
        id: 6,
        image: 'assets/Imagens/dias_da_semana/futebol.png',
        audio: 'audios/dias_da_semana/sabado.mp3',
        name: 'Sabádo',
      ),
      const WeekModel(
        id: 7,
        image: 'assets/Imagens/dias_da_semana/igreja.png',
        audio: 'audios/dias_da_semana/domingo.mp3',
        name: 'Domingo',
      )
    ];
  }
}
