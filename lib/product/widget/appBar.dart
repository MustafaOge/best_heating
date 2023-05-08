import 'package:best_heating/product/constants/theme/project_color.dart';
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

class CustomAppBarLogin extends StatelessWidget with PreferredSizeWidget {
  CustomAppBarLogin({
    super.key,
    required this.appBarName,
  });
  final String appBarName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        child: Icon(
          Icons.chevron_left,
          size: context.dynamicHeight(0.045),
          color: ProjectColors.black,
        ),
        onTap: () => Navigator.pop(context),
      ),
      title: Text(
        appBarName,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomAppBarHome extends StatelessWidget with PreferredSizeWidget {
  CustomAppBarHome({
    super.key,
    required this.appBarName,
  });
  final String appBarName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        child: Icon(
          Icons.chevron_left,
          size: context.dynamicHeight(0.045),
          color: ProjectColors.black,
        ),
        onTap: () => Navigator.pop(context),
      ),
      title: Text(
        appBarName,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
