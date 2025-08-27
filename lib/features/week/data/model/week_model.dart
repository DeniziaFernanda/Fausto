import 'package:fausto/features/week/domain/entity/week_entity.dart';

class WeekModel extends WeekEntity {

  const WeekModel({
    required super.id,
    required super.image,
    required super.audio,
    required super.name,
  });

  factory WeekModel.fromEntity(WeekEntity entity) {
    return WeekModel(
      id: entity.id,
      image: entity.image,
      audio: entity.audio,
      name: entity.name,
    );
  }

  WeekEntity toEntity() {
    return WeekEntity(
      id: id,
      image: image,
      audio: audio,
      name: name,
    );
  }
}