import 'package:fausto/features/alphabet/domain/entity/alphabet_entity.dart';

class AlphabetModel extends AlphabetEntity {

  const AlphabetModel({
    required super.id,
    required super.letter,
    required super.image,
  });

  factory AlphabetModel.fromEntity(AlphabetEntity entity) {
    return AlphabetModel(
      id: entity.id,
      letter: entity.letter,
      image: entity.image,
    );
  }

  AlphabetEntity toEntity() {
    return AlphabetEntity(
      id: id,
      letter: letter,
      image: image,
    );
  }
}