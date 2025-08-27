
import 'package:fausto/features/read/domain/entity/read_entity.dart';

abstract class ReadRepository {
  Future<List<ReadEntity>> getBooks();
}