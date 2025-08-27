import 'package:fausto/features/color/domain/entity/color_entity.dart';
import 'package:fausto/features/color/domain/repository/color_repository.dart';

class GetColorUsecase {
  final ColorRepository _repository;

  GetColorUsecase(this._repository);

  Future<List<ColorEntity>> call() async {
    return await _repository.getColors();
  }
}