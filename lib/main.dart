/// Flutter code sample for TabBar
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.cloud_outlined), text: "雲"),
              Tab(icon: Icon(Icons.beach_access_sharp), text: "雨"),
              Tab(icon: Icon(Icons.brightness_5_sharp), text: "晴れ"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Image(image: AssetImage('images/clouds.png')),
                  Text(
                    "ここで雲です",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Image(image: AssetImage('images/rainny.png')),
                  Text(
                    "ここで雨です",
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Image(image: AssetImage('images/sunny.png')),
                  Text(
                    "ここで晴れです",
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
