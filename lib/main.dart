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
    var leftnum = 5;

    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  print('Left button got press');
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
                    print('Right button got press');
                  }, child: Image.asset('images/dice1.png'),),
            ),
          ],
        ),
      ),
    );
  }
}
