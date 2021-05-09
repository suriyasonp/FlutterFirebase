import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/display.dart';
import 'package:flutter_firebase/screens/formscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: TabBarView(
          children: [FormScreen(), DisplayScreen()],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              text: "บันทึกคะแนน",
            ),
            Tab(
              text: "รายชื่อนักเรียน",
            )
          ],
        ),
      ),
    );
  }
}
