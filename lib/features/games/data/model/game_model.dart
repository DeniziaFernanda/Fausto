import 'package:fausto/features/games/domain/entity/game_entity.dart';

class GameModel extends GameEntity {

  const GameModel({
    required super.id,
    required super.image,
    required super.name,
  });

  factory GameModel.fromEntity(GameEntity entity) {
    return GameModel(
      id: entity.id,
      image: entity.image,
      name: entity.name,
    );
  }

  GameEntity toEntity() {
    return GameEntity(
      id: id,
      image: image,
      name: name,
    );
  }
}