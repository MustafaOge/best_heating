import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:best_heating/product/widget/radient/heater_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kartal/kartal.dart';

import '../../product/widget/appBar.dart';
import '../../product/widget/blown_raident/blown_raident_card.dart';
import '../../product/widget/blown_raident/modes_auto_controller_card.dart';
import '../../product/widget/blown_raident/modes_controller_card.dart';
import 'controller/home_controller.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  int _selectedTab = 0;

  List _blownRaidentPages = [
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
      child: Column(
        children: [
          BlownRadientCard(),
        ],
      ),
    ),
  ];
  List radientHeaterPages = [
    Center(
      child: Column(
        children: [
          HeaterCustomCard(),
        ],
      ),
    ),
    Center(
      child: Column(
        children: [Text("Radyant Isıtıcı otomatik mod")],
      ),
    )
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
        Get.put(HomeController());
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
                body: _blownRaidentPages[_selectedTab],
                bottomNavigationBar: customBottomNavigationBar(),
              ),
            ),
            Center(
              child: Scaffold(
                body: radientHeaterPages[_selectedTab],
                bottomNavigationBar: customBottomNavigationBar(),
              ),
            ),
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
              //  size: context.height * 0.04,
            ),
            label: "Manuel"),
        BottomNavigationBarItem(icon: Icon(Icons.sensors), label: "Otomatik"),
      ],
    );
  }
}
