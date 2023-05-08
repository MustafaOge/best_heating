import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../constants/image/image_constatns.dart';
import '../../constants/theme/project_color.dart';

class HeaterCustomCard extends StatelessWidget {
  const HeaterCustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      height: context.dynamicHeight(0.3),
      width: context.dynamicWidth(0.9),
      child: Stack(
        children: [
          Positioned(
            top: context.dynamicHeight(0.050),
            height: context.dynamicHeight(0.25),
            width: context.dynamicWidth(0.9),
            child: Container(
              child: Column(
                children: [
                  Expanded(flex: 4, child: Container()),
                  Expanded(
                      flex: 6,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: context.dynamicHeight(0.02),
                          right: context.dynamicHeight(0.02),
                          bottom: context.dynamicHeight(0.02),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 25,
                                child: Container(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 5,
                                            child: TopComponent(
                                              textTop: "Ortam",
                                              textBottom: "Sıcaklığı",
                                              resultText: "24",
                                            )),
                                        Expanded(
                                          flex: 1,
                                          child: verticalDvider(),
                                        ),
                                        Expanded(
                                            flex: 5,
                                            child: TopComponent(
                                              textTop: "Manuel",
                                              textBottom: "Mod",
                                              resultText: "Aktif",
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Divider(
                                    height: 20,
                                    thickness: 1,
                                    endIndent: 0,
                                    color: Colors.grey,
                                  )),
                              Expanded(
                                flex: 25,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      BottomComponent(
                                        textTop: "On",
                                        resultText: "4",
                                      ),
                                      verticalDvider(),
                                      BottomComponent(
                                        textTop: "Off",
                                        resultText: "4",
                                        textColor: ProjectColors.cardTextGrey,
                                      ),
                                      verticalDvider(),
                                      BottomComponent(
                                        textTop: "Isıtma",
                                        resultText: "4",
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
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
    );
  }
}

class verticalDvider extends StatelessWidget {
  const verticalDvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: 20,
      thickness: 1,
      endIndent: 0,
      color: Colors.grey,
    );
  }
}

class TopComponent extends StatelessWidget {
  const TopComponent({
    super.key,
    required this.resultText,
    required this.textTop,
    required this.textBottom,
  });
  final String resultText;
  final String textTop;
  final String textBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textTop, maxLines: 2, style: context.textTheme.labelLarge),
              Text(textBottom,
                  maxLines: 2, style: context.textTheme.labelLarge),
            ],
          ),
          Text(
            "$resultText",
            style: context.textTheme.labelLarge
                ?.copyWith(color: ProjectColors.cardTextGreen),
          ),
        ],
      ),
    );
  }
}

class BottomComponent extends StatelessWidget {
  const BottomComponent({
    super.key,
    required this.resultText,
    required this.textTop,
    this.textColor,
  });
  final String resultText;
  final String textTop;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(textTop, maxLines: 2, style: context.textTheme.labelLarge),
              Text(
                "$resultText",
                style: context.textTheme.labelLarge
                    ?.copyWith(color: textColor ?? ProjectColors.cardTextGreen),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
