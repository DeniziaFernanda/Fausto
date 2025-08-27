import 'package:fausto/features/color/domain/entity/color_entity.dart';

class ColorModel extends ColorEntity {

  const ColorModel({
    required super.id,
    required super.color,
    required super.audio,
    required super.name,
  });

  factory ColorModel.fromEntity(ColorEntity entity) {
    return ColorModel(
      id: entity.id,
      color: entity.color,
      audio: entity.audio,
      name: entity.name,
    );
  }

  ColorEntity toEntity() {
    return ColorEntity(
      id: id,
      color: color,
      audio: audio,
      name: name,
    );
  }
}