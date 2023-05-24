import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../constants/image/image_constatns.dart';
import '../../constants/theme/project_color.dart';
import '../alert_dialog.dart';

class BlownRadientCard extends StatelessWidget {
  const BlownRadientCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //   color: Colors.black,
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
                  Expanded(
                      flex: 4,
                      child: Container(
                        //color: Colors.amber,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: context.paddingCardIcon,
                              child: Text(
                                "1",
                                style: context.textTheme.titleLarge?.copyWith(
                                    color: ProjectColors.cardTextGrey),
                              ),
                            ),
                            DialogExample(
                              key: key,
                            )

                            // ALer dialog Gelecek
                          ],
                        ),
                      )),
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
                                              textTop: "Durum",
                                              resultText: "Açık",
                                            )),
                                        Expanded(
                                          flex: 1,
                                          child: verticalDvider(),
                                        ),
                                        Expanded(
                                            flex: 5,
                                            child: TopComponent(
                                              textTop: "Kademe",
                                              resultText: "5",
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
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 5,
                                            child: TopComponent(
                                              textTop: "Ortam\nSıcaklığı",
                                              resultText: "24",
                                            )),
                                        Expanded(
                                          flex: 1,
                                          child: verticalDvider(),
                                        ),
                                        Expanded(
                                            flex: 5,
                                            child: TopComponent(
                                              textTop: "Şehir\nSıcaklığı",
                                              resultText: "17",
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
            height: context.dynamicHeight(0.14),
            width: context.dynamicWidth(0.9),
            child: Image.asset(
              ImageConstants.instance.onBoardingImage2,
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
  });
  final String resultText;
  final String textTop;

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
