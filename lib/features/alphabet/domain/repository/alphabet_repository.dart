import 'package:fausto/features/alphabet/domain/entity/alphabet_entity.dart';

abstract class AlphabetRepository {
  Future<List<AlphabetEntity>> getAlphabets();
}