import 'package:fausto/features/week/data/source/week_datasource.dart';
import 'package:fausto/features/week/domain/entity/week_entity.dart';
import 'package:fausto/features/week/domain/repository/week_repository.dart';

class WeekRepositoryImpl implements WeekRepository {
  final WeekDataSource dataSource;

  WeekRepositoryImpl(this.dataSource);

  @override
  Future<List<WeekEntity>> getWeeks() async {
    final weeks = await dataSource.getWeeks();
    return weeks.map((week) => week.toEntity()).toList();
  }
}