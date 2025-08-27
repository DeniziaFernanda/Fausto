import 'package:fausto/features/number/data/source/number_datasource.dart';
import 'package:fausto/features/number/domain/entity/number_entity.dart';
import 'package:fausto/features/number/domain/repository/number_repository.dart';

class NumberRepositoryImpl implements NumberRepository {
  final NumberDatasource datasource;

  NumberRepositoryImpl(this.datasource);

  @override
  Future<List<NumberEntity>> getNumbers() async {
    final models = await datasource.getNumbers();
    return models.map((model) => model.toEntity()).toList();
  }
}