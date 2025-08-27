import 'package:fausto/features/animal/domain/entity/animal_entity.dart';

class AnimalModel extends AnimalEntity {

  const AnimalModel({
    required super.id,
    required super.image,
    required super.audio,
    required super.name,
  });

  factory AnimalModel.fromEntity(AnimalEntity entity) {
    return AnimalModel(
      id: entity.id,
      image: entity.image,
      audio: entity.audio,
      name: entity.name,
    );
  }

  AnimalEntity toEntity() {
    return AnimalEntity(
      id: id,
      image: image,
      audio: audio,
      name: name,
    );
  }
}