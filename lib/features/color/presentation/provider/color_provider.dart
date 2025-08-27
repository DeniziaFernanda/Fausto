import 'package:fausto/features/color/data/repository/color_repository_impl.dart';
import 'package:fausto/features/color/data/source/color_datasource.dart';
import 'package:fausto/features/color/domain/entity/color_entity.dart';
import 'package:fausto/features/color/domain/usecases/get_color_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// DataSource provider
final colorDataSourceProvider = Provider<ColorDataSource>((ref) {
	return ColorDataSourceImpl();
});

// Repository provider
final colorRepositoryProvider = Provider<ColorRepositoryImpl>((ref) {
	final dataSource = ref.read(colorDataSourceProvider);
	return ColorRepositoryImpl(dataSource);
});

// UseCase provider
final getColorUseCaseProvider = Provider<GetColorUsecase>((ref) {
	final repository = ref.read(colorRepositoryProvider);
	return GetColorUsecase(repository);
});

// Colors list provider (Async)
final colorsProvider = FutureProvider<List<ColorEntity>>((ref) async {
	final getColors = ref.read(getColorUseCaseProvider);
	return await getColors();
});

// provider para indicar a seleção do alfabeto
final selectedColorProvider = StateProvider<ColorEntity?>((ref) {
	return null;
});