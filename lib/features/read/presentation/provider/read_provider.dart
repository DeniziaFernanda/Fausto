
import 'package:fausto/features/read/data/repository/read_repository_impl.dart';
import 'package:fausto/features/read/data/source/read_datasource.dart';
import 'package:fausto/features/read/domain/entity/read_entity.dart';
import 'package:fausto/features/read/domain/usecases/get_books_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final readDataSourceProvider = Provider<ReadDataSource>((ref) {
	return ReadDataSourceImpl();
});

// Repository provider
final readRepositoryProvider = Provider<ReadRepositoryImpl>((ref) {
	final dataSource = ref.read(readDataSourceProvider);
	return ReadRepositoryImpl(dataSource);
});

// UseCase provider
final getReadUseCaseProvider = Provider<GetBooksUsecase>((ref) {
	final repository = ref.read(readRepositoryProvider);
	return GetBooksUsecase(repository);
});

// Reads list provider (Async)
final readsProvider = FutureProvider<List<ReadEntity>>((ref) async {
	final getReads = ref.read(getReadUseCaseProvider);
	return await getReads();
});

// provider para indicar a seleção do alfabeto
final selectedReadProvider = StateProvider<ReadEntity?>((ref) {
	return null;
});