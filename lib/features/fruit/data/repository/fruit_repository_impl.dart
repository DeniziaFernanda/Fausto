import 'package:fausto/features/fruit/data/source/fruit_datasource.dart';
import 'package:fausto/features/fruit/domain/entity/fruit_entity.dart';
import 'package:fausto/features/fruit/domain/repository/fruit_repository.dart';

class FruitRepositoryImpl implements FruitRepository {
  final FruitDatasource datasource;

  FruitRepositoryImpl(this.datasource);

  @override
  Future<List<FruitEntity>> getFruits() async {
    final models = await datasource.getFruits();
    return models.map((model) => model.toEntity()).toList();
  }
}