import 'package:fausto/features/games/data/model/game_model.dart';
import 'package:fausto/features/games/domain/entity/game_entity.dart';

abstract class GameDataSource {
  Future<List<GameModel>> getGames();
}

class GameDataSourceImpl implements GameDataSource {
  @override
  Future<List<GameModel>> getGames() async {
    return [
        const GameModel(
          id: 1,
          image: 'assets/Imagens/alfabeto/bloco-abc.png',
          name: "Alfabeto",
          type: GameType.alphabet,
      ),
      const GameModel(
          id: 2,
          image: 'assets/Imagens/numeros/numeros.png',
          name: "Números",
          type: GameType.number,
      ),
      const GameModel(
          id: 3,
          image: 'assets/Imagens/frutas/frutas.png',
          name: "Frutas",
          type: GameType.fruit,
      ),
      const GameModel(
          id: 4,
          image: 'assets/Imagens/animais/animais.png',
          name: "Animais",
          type: GameType.animal,
      ),
      const GameModel(
          id: 5,
          image: 'assets/Imagens/dias_da_semana/menina.png',
          name: "Dias da Semana",
          type: GameType.week,
      ),
      const GameModel(
          id: 6,
          image: 'assets/Imagens/cores/roda-de-cores.png',
          name: "Cores",
          type: GameType.color,
      ),
      const GameModel(
          id: 7,
          image: 'assets/Imagens/desenho/paleta-de-cores.png',
          name: "Desenho",
          type: GameType.drawing,
      ),
      const GameModel(
          id: 8,
          image: 'assets/Imagens/jogo_quiz/pergunta.png',
          name: "Jogo Quiz",
          type: GameType.quiz,
      ),
      const GameModel(
          id: 9,
          image: 'assets/Imagens/leitura/leitura.png',
          name: "Leitura",
          type: GameType.read,
      ),
    ];
  }
}
