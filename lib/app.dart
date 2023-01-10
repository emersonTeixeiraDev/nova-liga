import 'package:flutter/material.dart';
import 'package:nova_liga_sul/utils/app_routes.dart';
import 'theme/theme.dart';
import 'views/home_page.dart';

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
        AppRoutes.home: (ctx) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
