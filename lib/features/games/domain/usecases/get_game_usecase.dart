import 'package:fausto/features/games/domain/entity/game_entity.dart';
import 'package:fausto/features/games/domain/repository/game_repository.dart';

class GetGameUseCase {
  final GameRepository _repository;

  GetGameUseCase(this._repository);

  Future<List<GameEntity>> call() async {
    return await _repository.getGames();
  }
}