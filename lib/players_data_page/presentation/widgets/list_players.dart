import 'package:flutter/material.dart';

import '../../../home_page/domain/models/teams_identification_models.dart';

class PLayerList extends StatelessWidget {
  const PLayerList({super.key});

  @override
  Widget build(BuildContext context) {
    final item =
        ModalRoute.of(context)!.settings.arguments as TeamIdentification;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: item.players!.length,
        (context, index) {
          final player = item.players?.elementAt(index);
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Container(
              color: Colors.transparent,
              height: 130,
              width: 50,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.blue,
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(player!.playerName),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(player.position),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
