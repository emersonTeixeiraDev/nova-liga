class Rounds {
  final String nameLocal;
  final String nameVisitor;
  final String numberRound;
  final DateTime dateMacth;
  final String localTeam;
  final String visitorTeam;
  final int? goalsLocalTeam;
  final int? goalsVisitorTeam;

  Rounds({
    required this.nameLocal,
    required this.nameVisitor,
    required this.numberRound,
    required this.dateMacth,
    required this.localTeam,
    required this.visitorTeam,
    required this.goalsLocalTeam,
    required this.goalsVisitorTeam,
  });
}
