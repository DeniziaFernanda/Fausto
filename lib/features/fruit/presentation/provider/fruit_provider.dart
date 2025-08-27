
import 'package:fausto/features/fruit/data/repository/fruit_repository_impl.dart';
import 'package:fausto/features/fruit/data/source/fruit_datasource.dart';
import 'package:fausto/features/fruit/domain/entity/fruit_entity.dart';
import 'package:fausto/features/fruit/domain/usecases/get_fruit_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final fruitDataSourceProvider = Provider<FruitDatasource>((ref) {
	return FruitDatasourceImpl();
});

// Repository provider
final fruitRepositoryProvider = Provider<FruitRepositoryImpl>((ref) {
	final dataSource = ref.read(fruitDataSourceProvider);
	return FruitRepositoryImpl(dataSource);
});

// UseCase provider
final getFruitUseCaseProvider = Provider<GetFruitUseCase>((ref) {
	final repository = ref.read(fruitRepositoryProvider);
	return GetFruitUseCase(repository);
});

// Fruits list provider (Async)
final fruitsProvider = FutureProvider<List<FruitEntity>>((ref) async {
	final getFruits = ref.read(getFruitUseCaseProvider);
	return await getFruits();
});

// provider para indicar a seleção do alfabeto
final selectedFruitProvider = StateProvider<FruitEntity?>((ref) {
	return null;
});