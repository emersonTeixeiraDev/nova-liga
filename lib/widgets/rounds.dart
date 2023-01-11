import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/rounds_data.dart';

class Rounds extends StatefulWidget {
  const Rounds({super.key});

  @override
  State<Rounds> createState() => _RoundsState();
}

class _RoundsState extends State<Rounds> {
  final roundsData = RoundsData.roundsData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: roundsData.length,
            itemBuilder: (BuildContext context, int index) {
              final roundsData = RoundsData.roundsData.elementAt(index);
              return Row(
                children: [
                  Container(
                    color: const Color(0xffEDEEEF),
                    height: 189,
                    width: 350,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(
                            roundsData.numberRound,
                            style: theme.textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            DateFormat('yyyy/MM/dd - KK:mm')
                                .format(roundsData.dateMacth),
                            style: theme.textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    roundsData.localTeam.toString(),
                                    height: 30,
                                    width: 30,
                                  ),
                                  Text(
                                    roundsData.nameLocal,
                                    style: theme.textTheme.bodyMedium,
                                  )
                                ],
                              ),
                              Text(
                                roundsData.goalsLocalTeam.toString(),
                                style: theme.textTheme.bodyMedium,
                              ),
                              const Text(
                                'X',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                roundsData.goalsLocalTeam.toString(),
                                style: theme.textTheme.bodyMedium,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    roundsData.visitorTeam.toString(),
                                    height: 30,
                                    width: 30,
                                  ),
                                  Text(
                                    roundsData.nameVisitor,
                                    style: theme.textTheme.bodyMedium,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
            // separatorBuilder: (_, __) => const SizedBox(
            //   height: 20,
            // ),
          ),
        ),
      ),
    );
  }
}
