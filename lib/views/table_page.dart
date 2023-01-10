import 'package:flutter/material.dart';
import '../widgets/table.dart';
import '../widgets/table_indices.dart';

class TableBarPage extends StatefulWidget {
  const TableBarPage({super.key});

  @override
  State<TableBarPage> createState() => _TableBarPageState();
}

class _TableBarPageState extends State<TableBarPage> {
  @override
  Widget build(BuildContext context) {
    //teams.sort((teamB, teamA) => teamA.points.compareTo(teamB.points));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //const Rounds(),
            Container(
              color: Colors.white,
              height: 600,
              width: 1000,
              child: Column(
                children: const <Widget>[
                  TableIndices(),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  TableTeams(),
                ],
              ),
            ),
            const SizedBox(
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
