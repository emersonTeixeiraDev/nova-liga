import '../../../players_data_page/domain/model/player_model.dart';

class TeamIdentification {
  final String shield;
  final String name;
  final List<Player>? players;

  TeamIdentification(
    this.players, {
    required this.shield,
    required this.name,
  });
}
