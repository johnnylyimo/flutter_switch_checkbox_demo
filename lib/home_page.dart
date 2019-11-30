import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Hello Flutter'),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.blueGrey.shade700,
          width: 220.0,
          height: 180.0,
          child: Center(
            child: Center(
              child: Text('Hello Folks'),
            ),
          ),
        ),
      ),
    );
  }
}
