import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/rounds_repository.dart';

class Roundswidget extends StatefulWidget {
  const Roundswidget({super.key});

  @override
  State<Roundswidget> createState() => _RoundswidgetState();
}

class _RoundswidgetState extends State<Roundswidget> {
  final roundsRepository = RoundsRepository.roundsRepository;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 60),
      child: SizedBox(
        height: 205,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: roundsRepository.length,
              itemBuilder: (BuildContext context, int index) {
                final roundsData =
                    RoundsRepository.roundsRepository.elementAt(index);
                return Row(
                  children: [
                    SizedBox(
                      height: 189,
                      width: 300,
                      child: Card(
                        borderOnForeground: true,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                roundsData.numberRound,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              DateFormat('dd/MM/yyyy - KK:mm')
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
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
