import 'package:best_heating/product/constants/image/image_constatns.dart';
import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:best_heating/product/widget/appBar.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.background,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBarLogin(title: "title"),
            SafeArea(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: context.dynamicHeight(0.3),
              width: context.dynamicWidth(0.9),
              child: Stack(
                children: [
                  Positioned(
                    top: context.dynamicHeight(0.06),
                    height: context.dynamicHeight(0.25),
                    width: context.dynamicWidth(0.9),
                    child: Container(
                      decoration: BoxDecoration(
                          color: ProjectColors.white,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  Positioned(
                    //bottom: context.dynamicHeight(0.1),
                    height: context.dynamicHeight(0.12),
                    width: context.dynamicWidth(0.9),
                    child: Image.asset(
                      ImageConstants.instance.heaterRadient,
                      //height: context.dynamicHeight(0.1),
                      //width: context.dynamicWidth(0.1),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
