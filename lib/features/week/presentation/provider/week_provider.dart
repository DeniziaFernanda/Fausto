
import 'package:fausto/features/week/data/repository/week_repository_imp.dart';
import 'package:fausto/features/week/data/source/week_datasource.dart';
import 'package:fausto/features/week/domain/entity/week_entity.dart';
import 'package:fausto/features/week/domain/usecases/get_weeks_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final weekDataSourceProvider = Provider<WeekDataSource>((ref) {
	return WeekDatasourceImpl();
});

// Repository provider
final weekRepositoryProvider = Provider<WeekRepositoryImpl>((ref) {
	final dataSource = ref.read(weekDataSourceProvider);
	return WeekRepositoryImpl(dataSource);
});

// UseCase provider
final getWeekUseCaseProvider = Provider<GetWeeksUseCase>((ref) {
	final repository = ref.read(weekRepositoryProvider);
	return GetWeeksUseCase(repository);
});

// Weeks list provider (Async)
final weeksProvider = FutureProvider<List<WeekEntity>>((ref) async {
	final getWeeks = ref.read(getWeekUseCaseProvider);
	return await getWeeks();
});

// provider para indicar a seleção do alfabeto
final selectedWeekProvider = StateProvider<WeekEntity?>((ref) {
	return null;
});