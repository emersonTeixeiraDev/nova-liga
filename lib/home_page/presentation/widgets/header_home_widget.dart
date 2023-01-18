import 'package:flutter/material.dart';

class HeaderHomePageWidget extends StatelessWidget {
  const HeaderHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FlexibleSpaceBar(
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
    );
  }
}
