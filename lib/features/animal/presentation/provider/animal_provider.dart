
import 'package:fausto/features/animal/data/repository/animal_repository_impl.dart';
import 'package:fausto/features/animal/data/source/animal_datasource.dart';
import 'package:fausto/features/animal/domain/entity/animal_entity.dart';
import 'package:fausto/features/animal/domain/usecases/get_animal_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final animalDataSourceProvider = Provider<AnimalDataSource>((ref) {
	return AnimalDataSourceImpl();
});

// Repository provider
final animalRepositoryProvider = Provider<AnimalRepositoryImpl>((ref) {
	final dataSource = ref.read(animalDataSourceProvider);
	return AnimalRepositoryImpl(dataSource);
});

// UseCase provider
final getAnimalUseCaseProvider = Provider<GetAnimalUsecase>((ref) {
	final repository = ref.read(animalRepositoryProvider);
	return GetAnimalUsecase(repository);
});

// Animals list provider (Async)
final animalsProvider = FutureProvider<List<AnimalEntity>>((ref) async {
	final getAnimals = ref.read(getAnimalUseCaseProvider);
	return await getAnimals();
});

// provider para indicar a seleção do alfabeto
final selectedAnimalProvider = StateProvider<AnimalEntity?>((ref) {
	return null;
});