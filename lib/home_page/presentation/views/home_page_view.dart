import 'package:flutter/material.dart';
import '../widgets/header_home_widget.dart';
import '../widgets/rounds_widget.dart';
import '../widgets/table_widget.dart';
import '../widgets/teams_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEDEEEF),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Color(0xff9B1414),
            flexibleSpace: HeaderHomePageWidget(),
          ),
          SliverToBoxAdapter(
            child: TableTeamswidget(),
          ),
          SliverToBoxAdapter(
            child: TeamsWidget(),
          ),
          SliverToBoxAdapter(
            child: Roundswidget(),
          ),
        ],
      ),
    );
  }
}
