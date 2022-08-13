import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('dicee'),
        backgroundColor: Colors.blue,
      ),
      body: Dicepage(),
    ),
  ),);
}

class Dicepage extends StatelessWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

