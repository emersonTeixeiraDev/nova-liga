import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nova_liga_sul/routes/app_routes.dart';

import '../../data/teams_identification_repository.dart';

class TeamsWidget extends StatelessWidget {
  const TeamsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final roundsRepository =
        TeamsIdentificationRepository.teamsIdentificationRepository;
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 8, right: 8),
      child: SizedBox(
        height: 100,
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
                final roundsRepository = TeamsIdentificationRepository
                    .teamsIdentificationRepository
                    .elementAt(index);
                return Row(
                  children: [
                    SizedBox(
                      height: 189,
                      width: 250,
                      child: Card(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(AppRoutes.playersDataPage),
                              child: Image.network(
                                roundsRepository.shield,
                                height: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
