import 'package:flutter/material.dart';
import 'package:nova_liga_sul/widgets/rounds.dart';
import '../widgets/table.dart';
import '../widgets/table_indices.dart';

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverAppBar(
              backgroundColor: const Color(0xff006414),
              pinned: false,
              floating: false,
              snap: false,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  children: [
                    Image.asset(
                      'assets/images/logoLigaLargue.png',
                      width: 90,
                      height: 90,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Nova liga de veteranos',
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              centerTitle: true,
            ),
          ),
          const SliverToBoxAdapter(
            child: const Rounds(),
          ),
          SliverToBoxAdapter(
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      width: 1000,
                      child: Column(
                        children: const <Widget>[
                          TableIndices(),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TableTeams(),
        ],
      ),
    );
  }
}
