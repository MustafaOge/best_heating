import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leftIcon,
  });
  final String title;
  final Widget leftIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Icon(
            Icons.chevron_left,
            size: context.dynamicHeight(0.045),
          ),
          onTap: () => Navigator.pop(context),
        ),
        Text(
          "Giriş Yap",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          width: context.dynamicWidth(0.1),
        )
      ],
    );
  }
}

class CustomAppBarLogin extends StatelessWidget {
  CustomAppBarLogin({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Icon(
            Icons.chevron_left,
            size: context.dynamicHeight(0.045),
          ),
          onTap: () => Navigator.pop(context),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          width: context.dynamicWidth(0.1),
        )
      ],
    );
  }
}
