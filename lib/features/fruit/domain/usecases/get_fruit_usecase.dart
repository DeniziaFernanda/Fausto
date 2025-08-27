import 'package:fausto/features/fruit/domain/entity/fruit_entity.dart';
import 'package:fausto/features/fruit/domain/repository/fruit_repository.dart';

class GetFruitUseCase {
  final FruitRepository repository;

  GetFruitUseCase(this.repository);

  Future<List<FruitEntity>> call() async {
    return await repository.getFruits();
  }
}