
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fausto/features/games/domain/entity/game_entity.dart';
import 'package:fausto/features/games/domain/usecases/get_game_usecase.dart';
import 'package:fausto/features/games/data/source/game_datasource.dart';
import 'package:fausto/features/games/data/repository/game_repository_impl.dart';

// DataSource provider
final gameDataSourceProvider = Provider<GameDataSource>((ref) {
	return GameDataSourceImpl();
});

// Repository provider
final gameRepositoryProvider = Provider<GameRepositoryImpl>((ref) {
	final dataSource = ref.read(gameDataSourceProvider);
	return GameRepositoryImpl(dataSource);
});

// UseCase provider
final getGameUseCaseProvider = Provider<GetGameUseCase>((ref) {
	final repository = ref.read(gameRepositoryProvider);
	return GetGameUseCase(repository);
});

// Games list provider (Async)
final gamesProvider = FutureProvider<List<GameEntity>>((ref) async {
	final getGames = ref.read(getGameUseCaseProvider);
	return await getGames();
});
