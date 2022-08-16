import 'package:flutter/material.dart';

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

class Dicepage extends StatelessWidget {
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
                onPressed: () {},
                child: Image.asset('images/dice1.png'),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {}, child: Image.asset('images/dice1.png'),),
            ),
          ],
        ),
      ),
    );
  }
}
