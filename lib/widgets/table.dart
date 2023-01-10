import 'package:flutter/material.dart';
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
    final theme = Theme.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final teamsScore = TeamScoreData.teamstable.elementAt(index);
          return SizedBox(
            width: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 5,
                        height: 35,
                        color:
                            index < 8 ? const Color(0xff24ff24) : Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                        child: Text(
                          '${index + 1}',
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Image.asset(
                        teamsScore.shield.toString(),
                        width: 20,
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          teamsScore.name.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.points.toString(),
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.matches.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.victories.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.drawOrTie.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.defeats.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.goals.toString(),
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.ownGoal.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.yellowCard.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.redCard.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        child: Text(
                          teamsScore.goalBalance.toString(),
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        childCount: teamstable.length,
        // separatorBuilder: (_, __) => const Divider(
        //   height: 1,
        //   color: Colors.grey,
        // ),
      ),
    );
  }
}
