import 'package:fausto/features/games/domain/entity/game_entity.dart';

abstract class GameRepository {
  Future<List<GameEntity>> getGames();
}