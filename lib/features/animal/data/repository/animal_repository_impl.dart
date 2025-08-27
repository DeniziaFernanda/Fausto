import 'package:fausto/features/animal/data/source/animal_datasource.dart';
import 'package:fausto/features/animal/domain/entity/animal_entity.dart';
import 'package:fausto/features/animal/domain/repository/animal_repository.dart';

class AnimalRepositoryImpl implements AnimalRepository {
  final AnimalDataSource _dataSource;

  AnimalRepositoryImpl(this._dataSource);

  @override
  Future<List<AnimalEntity>> getAnimals() async {
    final animalModels = await _dataSource.fetchAnimals();
    return animalModels.map((model) => model.toEntity()).toList();
  }
}