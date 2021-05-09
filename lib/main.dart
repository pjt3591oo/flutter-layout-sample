import 'package:flutter/material.dart';

import 'package:layout/screens/other/index.dart';
import 'package:layout/screens/main/index.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Demo'),
        '/other': (context) => Other(),
      }
    );
  }
}