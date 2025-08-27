import 'package:fausto/features/games/domain/entity/game_entity.dart';
import 'package:fausto/features/games/domain/repository/game_repository.dart';
import 'package:fausto/features/games/data/source/game_datasource.dart';

class GameRepositoryImpl implements GameRepository {
  final GameDataSource dataSource;

  GameRepositoryImpl(this.dataSource);

  @override
  Future<List<GameEntity>> getGames() async {
    final models = await dataSource.getGames();
    return models.map((model) => model.toEntity()).toList();
  }
}
