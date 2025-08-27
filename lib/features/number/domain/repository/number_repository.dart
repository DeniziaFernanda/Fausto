import 'package:fausto/features/number/domain/entity/number_entity.dart';

abstract class NumberRepository {
  Future<List<NumberEntity>> getNumbers();
}