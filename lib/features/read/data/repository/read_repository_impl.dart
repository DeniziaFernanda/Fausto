import 'package:fausto/features/read/domain/entity/read_entity.dart';
import 'package:fausto/features/read/data/source/read_datasource.dart';
import 'package:fausto/features/read/domain/repository/read_repository.dart';

class ReadRepositoryImpl implements ReadRepository {
  final ReadDataSource _dataSource;

  ReadRepositoryImpl(this._dataSource);

  @override
  Future<List<ReadEntity>> getBooks() async {
    final readModels = await _dataSource.getBooks();
    return readModels.map((model) => model.toEntity()).toList();
  }
}
