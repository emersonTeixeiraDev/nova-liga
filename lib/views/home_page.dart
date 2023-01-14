import 'package:flutter/material.dart';
import 'package:nova_liga_sul/widgets/rounds.dart';

import '../widgets/table.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffEDEEEF),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: const Color(0xff9B1414),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Row(
                children: [
                  Image.asset(
                    'assets/images/logoLigaLargue.png',
                    width: 70,
                    height: 80,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Liga de veteranos',
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Rounds(),
          ),
          const SliverToBoxAdapter(
            child: TableTeams(),
          ),
        ],
      ),
    );
  }
}
