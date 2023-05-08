import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('AlertDialog Title'),
          content: Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text('OK'),
            ),
          ],
        ),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.info,
            color: ProjectColors.cardTextGrey,
          )),
    );
  }
}
