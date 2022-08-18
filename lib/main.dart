import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee Roll'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftnum = 5;
  int rigntnum = 2;

  void fun(){
    leftnum = Random().nextInt(6) + 1;
    rigntnum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    fun();
                    print('Left button got press and num = $leftnum ');
                  });
                },
                child: Image.asset('images/dice$leftnum.png'),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    fun();
                    print('Right button got press $rigntnum');
                  });
                },
                child: Image.asset('images/dice$rigntnum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
