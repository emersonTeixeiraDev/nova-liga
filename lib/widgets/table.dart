import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:nova_liga_sul/data/team._data.dart';

class TableTeams extends StatefulWidget {
  const TableTeams({super.key});

  @override
  State<TableTeams> createState() => _TableTeamsState();
}

class _TableTeamsState extends State<TableTeams> {
  final teamstable = TeamScoreData.teamstable;

  @override
  Widget build(BuildContext context) {
    teamstable.sort(
      (teamB, teamA) {
        int comparacaoPontos = teamA.points.compareTo(teamB.points);
        int comparacaoVitorias = teamA.victories.compareTo(teamB.victories);
        int comparacaoSaldoGoals =
            teamA.goalBalance.compareTo(teamB.goalBalance);
        int comparacaoCartaoVermelho = teamB.redCard.compareTo(teamA.redCard);
        int comparacaoCartaoyellow =
            teamB.yellowCard.compareTo(teamA.yellowCard);

        if (comparacaoPontos != 0) {
          return comparacaoPontos;
        } else if (comparacaoVitorias != 0) {
          return comparacaoVitorias;
        } else if (comparacaoSaldoGoals != 0) {
          return comparacaoSaldoGoals;
        } else if (comparacaoCartaoVermelho != 0) {
          return comparacaoCartaoVermelho;
        }
        return comparacaoCartaoyellow;
      },
    );
    //final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 765,
          height: 530,
          child: HorizontalDataTable(
            leftHandSideColumnWidth: 65,
            rightHandSideColumnWidth: 700,
            isFixedHeader: true,
            headerWidgets: _getTitleWidget(),
            leftSideItemBuilder: _generateFirstColumnRow,
            rightSideItemBuilder: _generateRightHandSideColumnRow,
            itemCount: teamstable.length,
            rowSeparatorWidget: const Divider(
              color: Colors.grey,
              height: 2.0,
              thickness: 0.0,
            ),
            leftHandSideColBackgroundColor: const Color(0xFFFFFFFF),
            rightHandSideColBackgroundColor: const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}

Widget _getTitleItemWidget(String label, double width) {
  return Container(
    width: width,
    height: 46,
    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
    alignment: Alignment.centerLeft,
    child: Text(
      label,
      style: const TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,
    ),
  );
}

List<Widget> _getTitleWidget() {
  return [
    _getTitleItemWidget('', 0),
    _getTitleItemWidget('Times', 200),
    _getTitleItemWidget('P', 50),
    _getTitleItemWidget('J', 50),
    _getTitleItemWidget('V', 50),
    _getTitleItemWidget('E', 50),
    _getTitleItemWidget('D', 50),
    _getTitleItemWidget('GP', 50),
    _getTitleItemWidget('GC', 50),
    _getTitleItemWidget('CA', 50),
    _getTitleItemWidget('CV', 50),
    _getTitleItemWidget('SG', 50),
  ];
}

Widget _generateFirstColumnRow(BuildContext context, int team) {
  final teamstable = TeamScoreData.teamstable;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 5,
        height: 35,
        color: team < 8 ? const Color(0xff24ff24) : Colors.white,
      ),
      SizedBox(
        width: 21,
        child: Text(
          '${team + 1}',
          //style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
      Image.asset(
        teamstable[team].shield.toString(),
        width: 20,
        //height: 50,
      ),
    ],
  );
}

Widget _generateRightHandSideColumnRow(BuildContext context, int team) {
  final teamstable = TeamScoreData.teamstable;
  return Row(
    children: <Widget>[
      Container(
        width: 200,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].name.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].points.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].matches.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].victories.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].drawOrTie.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].defeats.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].goals.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].ownGoal.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].yellowCard.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].redCard.toString(),
        ),
      ),
      Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        alignment: Alignment.centerLeft,
        child: Text(
          teamstable[team].goalBalance.toString(),
        ),
      ),
    ],
  );
}
