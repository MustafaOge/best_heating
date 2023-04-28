import 'package:flutter/material.dart';

class EmptyPage extends StatefulWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  State<EmptyPage> createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.fiber_manual_record)),
              Tab(icon: Icon(Icons.auto_mode)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Manuel Mod",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                ),
              ),
            ),
            Center(
              child: Text(
                "Otomatik Mod",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
