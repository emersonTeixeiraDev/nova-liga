import 'package:nova_liga_sul/players_data_page/domain/model/player_model.dart';

class PlayerIndicies extends Player {
  final String foto;
  final String birthDate;

  PlayerIndicies(
    super.playerName,
    super.position, {
    required this.foto,
    required this.birthDate,
  });
}
