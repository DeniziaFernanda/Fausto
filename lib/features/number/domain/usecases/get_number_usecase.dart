import 'package:fausto/features/number/domain/entity/number_entity.dart';
import 'package:fausto/features/number/domain/repository/number_repository.dart';

class GetNumberUseCase {
  final NumberRepository repository;

  GetNumberUseCase(this.repository);

  Future<List<NumberEntity>> call() async {
    return await repository.getNumbers();
  }
}