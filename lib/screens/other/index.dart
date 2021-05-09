import 'package:flutter/material.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "AppBar",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.lock),
              onPressed: () {},
              color: Colors.white,
            ),
          ]
        ),
        elevation: 0.0,
        // centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
        // actions: <Widget>[
        //   Padding(
        //     padding: EdgeInsets.only(right: 20.0),
        //     child: GestureDetector(
        //       onTap: () {},
        //       child: Icon(
        //         Icons.search,
        //         size: 26.0,
        //       ),
        //     )
        //   ),
        //   Padding(
        //     padding: EdgeInsets.only(right: 20.0),
        //     child: GestureDetector(
        //       onTap: () {},
        //       child: Icon(
        //           Icons.more_vert
        //       ),
        //     )
        //   ),
        // ]
      ),
      endDrawer: Drawer(
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
          ]
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 네이게이션에 쌓인 스택 마지막 가져오기
            Navigator.pop(context);
          },
          child: Text('Go Bottom Navifation Page >'),
        ),
      ),
    );
  }
}