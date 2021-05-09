import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            // 클릭하면 첫 번째 화면으로 돌아갑니다!
            Navigator.pushNamed(context, '/');
          },
          child: Text('Go Bottom Navifation Page >'),
        ),
    );
  }
}