import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:best_heating/product/widget/card/heater_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/widget/appBar.dart';
import '../../product/widget/card/blown_raident_card.dart';
import '../../product/widget/card/modes_controller_card.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: ProjectColors.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ProjectColors.transparant,
          elevation: 0.1,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.fiber_manual_record)),
              Tab(icon: Icon(Icons.auto_mode)),
            ],
          ),
          title: Text(
            'Isıtıcı',
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Column(
              children: [
                BlownRadientCard(),
                context.emptySizedHeightBoxLow2x,
                NumberControllerButton()
              ],
            )),
            Center(
                child: Column(
              children: [HeaterCustomCard()],
            )),
          ],
        ),
      ),
    );
  }
}
