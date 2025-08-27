import 'package:fausto/features/animal/domain/entity/animal_entity.dart';
import 'package:fausto/features/animal/domain/repository/animal_repository.dart';

class GetAnimalUsecase {
  final AnimalRepository _repository;

  GetAnimalUsecase(this._repository);

  Future<List<AnimalEntity>> call() async {
    return await _repository.getAnimals();
  }
}