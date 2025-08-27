import 'package:fausto/features/alphabet/data/source/alphabet_datasource.dart';
import 'package:fausto/features/alphabet/domain/entity/alphabet_entity.dart';
import 'package:fausto/features/alphabet/domain/repository/alphabet_repository.dart';

class AlphabetRepositoryImpl implements AlphabetRepository {
  final AlphabetDataSource _dataSource;

  AlphabetRepositoryImpl(this._dataSource);

  @override
  Future<List<AlphabetEntity>> getAlphabets() async {
    final alphabetModels = await _dataSource.getAlphabets();
    return alphabetModels.map((model) => model.toEntity()).toList();
  }
}
