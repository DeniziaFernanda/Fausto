
import 'package:fausto/features/alphabet/data/repository/alphabet_repository_impl.dart';
import 'package:fausto/features/alphabet/data/source/alphabet_datasource.dart';
import 'package:fausto/features/alphabet/domain/entity/alphabet_entity.dart';
import 'package:fausto/features/alphabet/domain/usecases/get_alphabet_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final alphabetDataSourceProvider = Provider<AlphabetDataSource>((ref) {
	return AlphabetDataSourceImpl();
});

// Repository provider
final alphabetRepositoryProvider = Provider<AlphabetRepositoryImpl>((ref) {
	final dataSource = ref.read(alphabetDataSourceProvider);
	return AlphabetRepositoryImpl(dataSource);
});

// UseCase provider
final getAlphabetUseCaseProvider = Provider<GetAlphabetUseCase>((ref) {
	final repository = ref.read(alphabetRepositoryProvider);
	return GetAlphabetUseCase(repository);
});

// Alphabets list provider (Async)
final alphabetsProvider = FutureProvider<List<AlphabetEntity>>((ref) async {
	final getAlphabets = ref.read(getAlphabetUseCaseProvider);
	return await getAlphabets();
});

// provider para indicar a seleção do alfabeto
final selectedAlphabetProvider = StateProvider<AlphabetEntity?>((ref) {
	return null;
});