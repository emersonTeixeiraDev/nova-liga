import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nova_liga_sul/routes/app_routes.dart';
import '../../data/teams_identification_repository.dart';

class TeamsWidget extends StatelessWidget {
  const TeamsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final team = TeamsIdentificationRepository.teamsIdentificationRepository;
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 8, right: 8),
      child: SizedBox(
        height: 120,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: team.length,
              itemBuilder: (BuildContext context, int index) {
                final team = TeamsIdentificationRepository
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
                              onTap: () => Navigator.of(context).pushNamed(
                                  AppRoutes.playersDataPage,
                                  arguments: team),
                              child: Column(
                                children: [
                                  Image.asset(
                                    team.shield,
                                    height: 60,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(team.name)
                                ],
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
