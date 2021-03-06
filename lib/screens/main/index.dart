import 'package:flutter/material.dart';

import 'package:layout/screens/main/first.dart';
import 'package:layout/screens/main/home.dart';
import 'package:layout/screens/main/second.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _children = [Home(), First(), Second()];
  int _currentIndex = 0;

  final pageController = PageController();

  void onTabClickHandle(int _index) {
    print('onTabClickHandle $_index');
    pageController.jumpToPage(_index);
  }

  void onPageChangeHandler(int _index) {
    print('onPageChangeHandler $_index');
    setState(() {
      _currentIndex = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + " TAB-" + _currentIndex.toString()),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChangeHandler,
        children: _children,
        // physics: NeverScrollableScrollPhysics()
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabClickHandle,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "First",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Second",
          )
        ])
      );
  }
}
