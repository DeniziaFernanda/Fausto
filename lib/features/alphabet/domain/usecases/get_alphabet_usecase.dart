import 'package:fausto/features/alphabet/domain/entity/alphabet_entity.dart';
import 'package:fausto/features/alphabet/domain/repository/alphabet_repository.dart';

class GetAlphabetUseCase {
  final AlphabetRepository _repository;

  GetAlphabetUseCase(this._repository);

  Future<List<AlphabetEntity>> call() async {
    return await _repository.getAlphabets();
  }
}