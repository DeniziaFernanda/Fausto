import 'package:fausto/features/read/domain/entity/read_entity.dart';
import 'package:fausto/features/read/domain/repository/read_repository.dart';

class GetBooksUsecase {
  final ReadRepository _repository;

  GetBooksUsecase(this._repository);

  Future<List<ReadEntity>> call() async {
    return await _repository.getBooks();
  }
}