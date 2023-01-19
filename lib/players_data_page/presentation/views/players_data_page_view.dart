import 'package:flutter/material.dart';

class PlayersDataPageView extends StatelessWidget {
  const PlayersDataPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('time'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            Text('emersin'),
            Text('Elenco:'),
            Text('lista de jogadores e posição ')
          ],
        ),
      ),
    );
  }
}
