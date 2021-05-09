import 'package:flutter/material.dart';


class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Menu 연습"),
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed:(){}
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed:(){}
          )
        ],
      ),
      drawer: Drawer(
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 클릭하면 첫 번째 화면으로 돌아갑니다!
            Navigator.pushNamed(context, '/other');
          },
          child: Text('Go Bottom Navifation Page >'),
        ),
      ),
    );
  }
}