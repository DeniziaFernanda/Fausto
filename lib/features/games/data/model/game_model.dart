import 'package:fausto/features/games/domain/entity/game_entity.dart';

class GameModel extends GameEntity {

  const GameModel({
    required super.id,
    required super.image,
    required super.name,
    required super.type,
  });

  factory GameModel.fromEntity(GameEntity entity) {
    return GameModel(
      id: entity.id,
      image: entity.image,
      name: entity.name,
      type: entity.type,
    );
  }

  GameEntity toEntity() {
    return GameEntity(
      id: id,
      image: image,
      name: name,
      type: type,
    );
  }
}