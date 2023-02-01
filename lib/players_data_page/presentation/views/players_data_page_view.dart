import 'package:flutter/material.dart';
import '../../../home_page/domain/models/teams_identification_models.dart';
import '../../../home_page/presentation/widgets/header_home_widget.dart';

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
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: item.players!.length,
            (context, index) {
              final player = item.players?.elementAt(index);
              return Container(
                color: Colors.transparent,
                height: 60,
                width: 50,
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(player!.playerName),
                              Text(player.position)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
