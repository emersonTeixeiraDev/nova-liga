import 'teams_identification_models.dart';

class TeamsScore extends TeamIdentification {
  final int points;
  final int matches;
  final int victories;
  final int drawOrTie;
  final int defeats;
  final int goals;
  final int ownGoal;
  final int yellowCard;
  final int redCard;
  final int goalBalance;

  TeamsScore(
      {required this.points,
      required this.matches,
      required this.victories,
      required this.drawOrTie,
      required this.defeats,
      required this.goals,
      required this.ownGoal,
      required this.yellowCard,
      required this.redCard,
      required this.goalBalance,
      required super.shield,
      required super.name});
}
