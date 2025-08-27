import 'package:fausto/features/week/domain/entity/week_entity.dart';
import 'package:fausto/features/week/domain/repository/week_repository.dart';

class GetWeeksUseCase {
  final WeekRepository repository;

  GetWeeksUseCase(this.repository);

  Future<List<WeekEntity>> call() async {
    return await repository.getWeeks();
  }
}