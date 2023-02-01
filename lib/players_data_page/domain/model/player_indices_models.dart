import 'package:nova_liga_sul/players_data_page/domain/model/player_model.dart';

class PlayerIndicies extends Player {
  final String goals;
  final String yellomCard;
  final String redCard;
  final String birthDate;

  PlayerIndicies(
    super.playerName,
    super.position, {
    required this.goals,
    required this.yellomCard,
    required this.redCard,
    required this.birthDate,
    required super.foto,
  });
}
