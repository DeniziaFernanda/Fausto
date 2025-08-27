import 'package:fausto/features/week/domain/entity/week_entity.dart';

abstract class WeekRepository {
  Future<List<WeekEntity>> getWeeks();
}