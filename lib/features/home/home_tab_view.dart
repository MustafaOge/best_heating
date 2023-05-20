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
  int _selectedTab = 0;

  List _pages = [
    Center(
        child: Column(
      children: [
        BlownRadientCard(),
        SizedBox(
          height: 20,
        ),
        ModesControllerCard(),
      ],
    )),
    Center(
      child: Text("About"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

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
            indicatorColor: ProjectColors.darkOrange,
            tabs: [
              Tab(icon: Icon(Icons.fiber_manual_record)),
              Tab(icon: Icon(Icons.auto_mode)),
            ],
          ),
          title: Text(
            'Best Heating',
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Scaffold(
                body: _pages[_selectedTab],
                bottomNavigationBar: customBottomNavigationBar(),
              ),
            ),
            Center(
                child: Column(
              children: [HeaterCustomCard()],
            )),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar customBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedTab,
      onTap: (index) => _changeTab(index),
      selectedItemColor: ProjectColors.darkOrange,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_remote_outlined,
              size: context.height * 0.04,
            ),
            label: "Manuel"),
        BottomNavigationBarItem(icon: Icon(Icons.sensors), label: "Otomatik"),
      ],
    );
  }
}
