import 'package:flutter/material.dart';
import 'package:nova_liga_sul/routes/app_routes.dart';
import 'players_data_page/presentation/views/players_data_page_view.dart';
import 'theme/theme.dart';
import 'home_page/presentation/views/home_page_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      routes: {
        AppRoutes.home: (ctx) => const HomePageView(),
        AppRoutes.playersDataPage: (ctx) => const PlayersDataPageView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
