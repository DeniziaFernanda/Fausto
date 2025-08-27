import 'package:fausto/features/fruit/domain/entity/fruit_entity.dart';

abstract class FruitRepository {
  Future<List<FruitEntity>> getFruits();
}