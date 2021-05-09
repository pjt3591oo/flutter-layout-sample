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
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // _scaffoldKey.currentState.openDrawer();
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChangeHandler,
        children: _children,
        physics: NeverScrollableScrollPhysics()
      ),
      endDrawer:Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              // tileColor: Colors.grey[800],
              title: Text('Item1'),
              onTap: () {
                print('Menu Icon Item1 Clicked');
              }
            ),
            ListTile(
              leading: Icon(Icons.image),
              // tileColor: Colors.grey[800],
              title: Text('Item2'),
              onTap: () {
                print('Menu Icon Item2 Clicked');
              }
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              // tileColor: Colors.grey[800],
              title: Text('Item3'),
              onTap: () {
                print('Menu Icon Item3 Clicked');
              }
            ),
          ],
        )
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
