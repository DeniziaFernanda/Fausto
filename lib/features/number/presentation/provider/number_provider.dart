
import 'package:fausto/features/number/data/repository/number_repository_impl.dart';
import 'package:fausto/features/number/data/source/number_datasource.dart';
import 'package:fausto/features/number/domain/entity/number_entity.dart';
import 'package:fausto/features/number/domain/usecases/get_number_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final numberDataSourceProvider = Provider<NumberDatasource>((ref) {
	return NumberDatasourceImpl();
});

// Repository provider
final numberRepositoryProvider = Provider<NumberRepositoryImpl>((ref) {
	final dataSource = ref.read(numberDataSourceProvider);
	return NumberRepositoryImpl(dataSource);
});

// UseCase provider
final getNumberUseCaseProvider = Provider<GetNumberUseCase>((ref) {
	final repository = ref.read(numberRepositoryProvider);
	return GetNumberUseCase(repository);
});

// Numbers list provider (Async)
final numbersProvider = FutureProvider<List<NumberEntity>>((ref) async {
	final getNumbers = ref.read(getNumberUseCaseProvider);
	return await getNumbers();
});

// provider para indicar a seleção do alfabeto
final selectedNumberProvider = StateProvider<NumberEntity?>((ref) {
	return null;
});