enum GameType {
  alphabet,
  number,
  fruit,
  week,
  animal,
  color,
  read,
  drawing,
  quiz
}

class GameEntity {
  final int id;
  final String image;
  final String name;
  final GameType type;

  const GameEntity({
    required this.id,
    required this.image,
    required this.name,
    required this.type,
  });
}








