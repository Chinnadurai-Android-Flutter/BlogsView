import 'package:flutter/material.dart';

import 'main_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(icon: Icon(Icons.bookmark_border), onPressed: null),
            IconButton(icon: Icon(Icons.person_outline), onPressed: null),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
        child: SingleChildScrollView(child: MainContent()),
      ),
    );
  }
}
