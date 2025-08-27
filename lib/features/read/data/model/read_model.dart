import 'package:fausto/features/read/domain/entity/read_entity.dart';

class ReadModel extends ReadEntity {

  const ReadModel({
    required super.id,
    required super.book,
    required super.image,
  });

  factory ReadModel.fromEntity(ReadEntity entity) {
    return ReadModel(
      id: entity.id,
      book: entity.book,
      image: entity.image,
    );
  }

  ReadEntity toEntity() {
    return ReadEntity(
      id: id,
      book: book,
      image: image,
    );
  }
}