
import 'package:fausto/features/number/domain/entity/number_entity.dart';

class NumberModel extends NumberEntity {

  const NumberModel({
    required super.id,
    required super.number,
    required super.image,
    required super.audio,
  });

  factory NumberModel.fromEntity(NumberEntity entity) {
    return NumberModel(
      id: entity.id,
      number: entity.number,
      image: entity.image,
      audio: entity.audio,
    );
  }

  NumberEntity toEntity() {
    return NumberEntity(
      id: id,
      number: number,
      image: image,
      audio: audio,
    );
  }
}