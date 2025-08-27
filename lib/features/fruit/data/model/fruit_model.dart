import 'package:fausto/features/fruit/domain/entity/fruit_entity.dart';

class FruitModel extends FruitEntity {

  const FruitModel({
    required super.id,
    required super.image,
    required super.audio,
    required super.name,
  });

  factory FruitModel.fromEntity(FruitEntity entity) {
    return FruitModel(
      id: entity.id,
      image: entity.image,
      audio: entity.audio,
      name: entity.name,
    );
  }

  FruitEntity toEntity() {
    return FruitEntity(
      id: id,
      image: image,
      audio: audio,
      name: name,
    );
  }
}