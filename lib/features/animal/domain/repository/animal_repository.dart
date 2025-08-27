import 'package:fausto/features/animal/domain/entity/animal_entity.dart';

abstract class AnimalRepository {
  Future<List<AnimalEntity>> getAnimals();
}
