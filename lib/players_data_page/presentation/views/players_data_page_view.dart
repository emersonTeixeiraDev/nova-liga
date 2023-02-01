import 'package:flutter/material.dart';
import '../../../home_page/domain/models/teams_identification_models.dart';
import '../../../home_page/presentation/widgets/header_home_widget.dart';
import '../widgets/list_players.dart';

class PlayersDataPageView extends StatelessWidget {
  const PlayersDataPageView({super.key});
  //List<Player> players;

  @override
  Widget build(BuildContext context) {
    final item =
        ModalRoute.of(context)!.settings.arguments as TeamIdentification;

    return Scaffold(
      backgroundColor: const Color(0xffEDEEEF),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Color(0xff9B1414),
            flexibleSpace: HeaderHomePageWidget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 24),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        item.shield,
                      ),
                      const SizedBox(height: 10),
                      Text(item.name),
                    ]),
              ),
            ),
          ),
          const PLayerList()
        ],
      ),
    );
  }
}
